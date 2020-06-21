import 'package:clientes/app/locator.dart';
import 'package:clientes/services/device_info_service.dart';

Future<void> deviceInfoInit() async {
  final _deviceInfo = locator<DeviceInfoService>();

  await _deviceInfo.initPlatformState();
}
