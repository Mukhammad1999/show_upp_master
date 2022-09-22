import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:master_app/app/entities/location_entity.dart';
import 'package:master_app/app/ui/presentation/controllers/location_bloc/bloc/location_bloc.dart';
import 'package:master_app/app/utils/service/location_service.dart';
import 'package:mocktail/mocktail.dart';

class MockLocationService extends Mock implements LocationService {}

void main() {
  group('LocationBloC test', () {
    late final LocationService locationService;

    setUp(() {
      locationService = MockLocationService();
    });

    test(
      'LocationBloc state is loading at First',
      () {
        expect(
          LocationBloc(locationService: locationService).state,
          const LocationState.loading(),
        );
      },
    );

    blocTest(
      'LocationBloc has to drop incoming events withing 500 milliseconds',
      setUp: () {
        when(() => locationService.fetchGeoCoding(41, 69, 'en')).thenAnswer(
          (invocation) async => const LocationEntity(
            latitude: 41,
            longitude: 50,
            placeMark: '',
          ),
        );
      },
      build: () => LocationBloc(
        locationService: locationService,
      ),
      act: (LocationBloc bloc) => bloc
        ..add(
          const FetchLocation(lat: 41, lon: 69, locale: 'en'),
        )
        ..add(
          const FetchLocation(lat: 41, lon: 69, locale: 'en'),
        ),
      expect: () => const [
        LocationState.loading(),
        LocationState.success(
          locationEntity: LocationEntity(
            latitude: 41,
            longitude: 50,
            placeMark: '',
          ),
        )
      ],
      verify: (bloc) {
        verify(
          () => locationService.fetchGeoCoding(41, 69, 'en'),
        ).called(1);
      },
    );
  });
}
