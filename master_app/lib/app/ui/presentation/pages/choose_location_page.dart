// ignore_for_file: strict_raw_type

import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:latlong2/latlong.dart';
import 'package:master_app/app/entities/location_entity.dart';
import 'package:master_app/app/ui/presentation/controllers/location_bloc/bloc/location_bloc.dart';
import 'package:master_app/app/ui/presentation/controllers/location_bloc/location_animation_cubit/cubit/location_animation_cubit.dart';
import 'package:master_app/app/ui/presentation/controllers/location_bloc/user_location_bloc/bloc/user_location_bloc.dart';
import 'package:master_app/app/ui/widgets/buttons/app_text_button.dart';
import 'package:master_app/app/ui/widgets/location_widgets/geo_code_holder.dart';
import 'package:master_app/app/ui/widgets/location_widgets/location_circle_marker.dart';
import 'package:master_app/app/utils/typedefs/typedefs.dart';
import 'package:master_app/localization/translation_strings.dart';
import 'package:rive/rive.dart';

class ChooseLocationPage extends StatefulWidget {
  const ChooseLocationPage({
    super.key,
    required this.title,
    required this.onChooseLocation,
  });
  final String title;

  final LocationCallback onChooseLocation;

  @override
  State<ChooseLocationPage> createState() => _ChooseLocationPageState();
}

class _ChooseLocationPageState extends State<ChooseLocationPage> {
  _ChooseLocationPageState();

  bool controllerReady = false;
  bool buildFinished = false;
  final MapController _mapController = MapController();
  final double zoom = 13;
  Timer? _mapMovementTimer;
  SMIInput<bool>? raiseInput;
  SMIInput<bool>? loadingInput;

  @override
  void initState() {
    super.initState();
    _mapController.onReady.then((value) {
      setState(() {
        controllerReady = true;
      });
    });
    context.read<UserLocationBloc>().add(const FetchUserLocation());

    WidgetsBinding.instance.addPostFrameCallback((_) => buildFinished = true);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).primaryColor,
        title: Text(
          widget.title,
        ),
      ),
      body: BlocConsumer<UserLocationBloc, UserLocationState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => null,
            success: (userLocation) {
              final locale = context.locale;
              context.read<LocationBloc>().add(
                    FetchLocation(
                      lat: userLocation?.latitude ?? 41,
                      lon: userLocation?.longitude ?? 69,
                      locale: locale.toString(),
                    ),
                  );
            },
          );
        },
        builder: (context, state) {
          return state.when(
            loading: (userL) {
              return Center(
                child: SpinKitChasingDots(
                  color: Theme.of(context).primaryColor,
                ),
              );
            },
            success: (userLocation) {
              return Stack(
                children: [
                  FlutterMap(
                    mapController: _mapController
                      ..mapEventStream.listen((event) {
                        if (event is MapEventMoveStart) {
                          context.read<LocationAnimationCubit>().raiseMarker();
                        } else if (event is MapEventMoveEnd) {
                          if (_mapMovementTimer != null) {
                            _mapMovementTimer?.cancel();
                          }
                          _mapMovementTimer = Timer(
                            const Duration(
                              milliseconds: 500,
                            ),
                            () {
                              context.read<LocationBloc>().add(
                                    FetchLocation(
                                      lat: _mapController.center.latitude,
                                      lon: _mapController.center.longitude,
                                      locale: locale.toString(),
                                    ),
                                  );
                            },
                          );
                        }
                      }),
                    layers: [
                      TileLayerOptions(
                        urlTemplate:
                            'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: ['a', 'b', 'c'],
                      ),
                      MarkerLayerOptions(
                        markers: [
                          Marker(
                            width: 50,
                            height: 50,
                            point: LatLng(
                              userLocation?.latitude ?? 41,
                              userLocation?.longitude ?? 69,
                            ),
                            builder: (ctx) => const LocationCircleMarker(
                              color: Colors.blue,
                            ),
                            anchorPos: AnchorPos.align(AnchorAlign.center),
                          ),
                          Marker(
                            rotate: true,
                            width: 90,
                            height: 90,
                            point: controllerReady
                                ? _mapController.center
                                : LatLng(
                                    userLocation?.latitude ?? 41,
                                    userLocation?.longitude ?? 69,
                                  ),
                            anchorPos: AnchorPos.align(AnchorAlign.top),
                            builder: (ctx) {
                              // return Icon(Ionicons.locate);
                              return const LocationChooserMarker();
                            },
                          ),
                        ],
                      )
                    ],
                    options: MapOptions(
                      center: controllerReady
                          ? _mapController.center
                          : LatLng(
                              userLocation?.latitude ?? 41,
                              userLocation?.longitude ?? 69,
                            ),
                      onPositionChanged: (position, hasGesture) {
                        if (hasGesture) {
                          setState(() {});
                        }
                      },
                      zoom: zoom,
                      maxZoom: 18,
                      minZoom: 14,
                    ),
                  ),
                  BlocBuilder<LocationBloc, LocationState>(
                    builder: (context, state) {
                      return GeoCodeHolder(
                        geoCode: state.maybeMap(
                          orElse: () => null,
                          success: (value) => value.locationEntity?.placeMark,
                        ),
                      );
                    },
                  ),
                  BlocConsumer<LocationBloc, LocationState>(
                    listener: (context, state) {
                      state.when(
                        loading: () {
                          context.read<LocationAnimationCubit>().loadMarker();
                        },
                        success: (c) {
                          context.read<LocationAnimationCubit>().stopLoading();
                        },
                        error: (er, e) {
                          context.read<LocationAnimationCubit>().stopLoading();
                        },
                      );
                    },
                    builder: (context, state) {
                      return Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: SafeArea(
                            child: AppTextButton(
                              title: TranslationStrings.auth.confirm.tr(),
                              onPressed: state.maybeWhen(
                                orElse: () => null,
                                success: (locationEntity) {
                                  return () {
                                    if (controllerReady) {
                                      widget.onChooseLocation(
                                        locationEntity ??
                                            LocationEntity(
                                              latitude: _mapController
                                                  .center.latitude,
                                              longitude: _mapController
                                                  .center.longitude,
                                            ),
                                      );
                                    }
                                  };
                                },
                              ),
                              isLoading: state.maybeWhen(
                                orElse: () => false,
                                loading: () => true,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 75,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            _mapController.move(
                              LatLng(
                                userLocation?.latitude ?? 41,
                                userLocation?.longitude ?? 69,
                              ),
                              zoom,
                            );
                          });
                          context.read<LocationBloc>().add(
                                FetchLocation(
                                  lat: _mapController.center.latitude,
                                  lon: _mapController.center.longitude,
                                  locale: locale.toString(),
                                ),
                              );
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(
                              50,
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_circle_up_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
            failure: (userLocation) {
              return Container();
            },
          );
        },
      ),
    );
  }
}

class LocationChooserMarker extends StatefulWidget {
  const LocationChooserMarker({
    super.key,
  });

  @override
  State<LocationChooserMarker> createState() => _LocationChooserMarkerState();
}

class _LocationChooserMarkerState extends State<LocationChooserMarker> {
  Artboard? _riveArtboard;
  bool artboardReady = false;
  StateMachineController? _stateMachineController;
  bool get isPlaying => _stateMachineController?.isActive ?? false;
  SMIInput<bool>? raiseInput;
  SMIInput<bool>? loadingInput;

  @override
  void initState() {
    super.initState();
    rootBundle.load('assets/elements/locationmarker.riv').then((value) async {
      final file = RiveFile.import(value);
      final artboard = file.mainArtboard;
      final controller =
          StateMachineController.fromArtboard(artboard, 'State Machine 1');
      if (controller != null) {
        artboard.addController(controller);

        raiseInput = controller.findInput<bool>('RAISED');
        loadingInput = controller.findInput<bool>('LOADING');
      }
      setState(() {
        _riveArtboard = artboard;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationAnimationCubit, LocationAnimationState>(
      listener: (context, state) {
        setState(
          () {
            raiseInput?.value = state.raise;
            loadingInput?.value = state.loading;
          },
        );
      },
      builder: (context, state) {
        return SizedBox(
          height: 90,
          child: _riveArtboard == null
              ? const SizedBox()
              : Rive(
                  artboard: _riveArtboard!,
                ),
        );
      },
    );
  }
}
