import '../../app/locator.dart';
import '../../services/data_cache_service.dart';

Future<void> cacheInitialize() async {
  final cacheData = locator<DataCacheService>();

  await cacheData.initialize();
}
