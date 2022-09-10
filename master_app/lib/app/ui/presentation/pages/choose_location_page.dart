import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:master_app/app/ui/presentation/controllers/location_bloc/bloc/location_bloc.dart';
import 'package:master_app/app/ui/widgets/buttons/app_text_button.dart';
import 'package:master_app/localization/translation_strings.dart';

class ChooseLocationPage extends StatefulWidget {
  const ChooseLocationPage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<ChooseLocationPage> createState() => _ChooseLocationPageState();
}

class _ChooseLocationPageState extends State<ChooseLocationPage> {
  late final MapController _mapController;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
  }

  @override
  void dispose() {
    super.dispose();
    _mapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Stack(
        children: [
          BlocBuilder<LocationBloc, LocationState>(
            builder: (context, state) {
              return FlutterMap(
                mapController: _mapController,
                options: MapOptions(
                  onMapReady: () {
                    context.read<LocationBloc>().add(
                          FetchLocation(
                            lat: _mapController.center.latitude,
                            lon: _mapController.center.longitude,
                            locale: context.locale.toString(),
                          ),
                        );
                  },
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                    subdomains: const ['a', 'b', 'c'],
                  ),
                ],
              );
            },
          ),
          BlocBuilder<LocationBloc, LocationState>(
            builder: (context, state) {
              return GeoCodeHolder(
                geoCode: state.when(
                  loading: () => null,
                  success: (locationEntity, userLocation) =>
                      locationEntity.placeMark,
                  error: (errorMessage) => 'error'.tr(),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: AppTextButton(
                title: TranslationStrings.common.confirm.tr(),
              ),
            ),
          ),
          // AppTextButton(title: Text),
        ],
      ),
    );
  }
}

class GeoCodeHolder extends StatelessWidget {
  const GeoCodeHolder({
    super.key,
    this.geoCode,
  });
  final String? geoCode;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: GeoCodeClipBehavior(),
      child: Container(
        height: size.height / 6,
        width: size.width,
        color: Theme.of(context).backgroundColor,
        child: Center(
          child: geoCode != null
              ? Row(
                  children: [
                    const Icon(
                      Icons.place,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      geoCode!,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              : SpinKitThreeBounce(
                  color: Theme.of(context).primaryColor,
                  size: 15,
                ),
        ),
      ),
    );
  }
}

class GeoCodeClipBehavior extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height - 25)
      ..lineTo(25, size.height - 25)
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
