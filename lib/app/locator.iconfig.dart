// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:clientes/services/api_service.dart';
import 'package:clientes/services/analytics_service.dart';
import 'package:clientes/services/data_cache_service.dart';
import 'package:clientes/services/device_info_service.dart';
import 'package:clientes/services/third_party_services_module.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:clientes/services/firestore_service.dart';
import 'package:clientes/services/theme_manager.dart';
import 'package:clientes/services/vibration_service.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  g.registerLazySingleton<APIService>(() => APIService());
  g.registerLazySingleton<AnalyticsService>(() => AnalyticsService());
  g.registerLazySingleton<DataCacheService>(() => DataCacheService());
  g.registerLazySingleton<DeviceInfoService>(() => DeviceInfoService());
  g.registerLazySingleton<DialogService>(
      () => thirdPartyServicesModule.dialogService);
  g.registerLazySingleton<FirestoreService>(() => FirestoreService());
  g.registerLazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  g.registerLazySingleton<SnackbarService>(
      () => thirdPartyServicesModule.snackbarService);
  g.registerLazySingleton<ThemeManager>(() => ThemeManager());
  g.registerLazySingleton<VibrationService>(() => VibrationService());
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
  @override
  SnackbarService get snackbarService => SnackbarService();
}
