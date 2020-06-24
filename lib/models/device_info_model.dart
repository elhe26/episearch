class DeviceInfo {
  final String securityPatch;
  final String sdkInt;
  final String release;
  final String previewSdkInt;
  final String incremental;
  final String codename;
  final String baseOS;
  final String board;
  final String bootloader;
  final String brand;
  final String device;
  final String display;
  final String fingerprint;
  final String hardware;
  final String host;
  final String id;
  final String manufacturer;
  final String model;
  final String product;
  final String supported32BitAbis;
  final String supported64BitAbis;
  final String supportedAbis;
  final String tags;
  final String type;
  final String isPhysicalDevice;
  final String androidId;
  final String systemFeatures;

  DeviceInfo({
    this.securityPatch,
    this.sdkInt,
    this.release,
    this.previewSdkInt,
    this.incremental,
    this.codename,
    this.baseOS,
    this.board,
    this.bootloader,
    this.brand,
    this.device,
    this.display,
    this.fingerprint,
    this.hardware,
    this.host,
    this.id,
    this.manufacturer,
    this.model,
    this.product,
    this.supported32BitAbis,
    this.supported64BitAbis,
    this.supportedAbis,
    this.tags,
    this.type,
    this.isPhysicalDevice,
    this.androidId,
    this.systemFeatures,
  });

  factory DeviceInfo.fromMap(Map<String, dynamic> map) => DeviceInfo(
        securityPatch: map['version.securityPatch'],
        sdkInt: map['version.sdkInt'],
        release: map['version.release'],
        previewSdkInt: map['version.previewSdkInt'],
        incremental: map['version.incremental'],
        codename: map['version.codename'],
        baseOS: map['version.baseOS'],
        board: map['board'],
        bootloader: map['bootloader'],
        brand: map['brand'],
        device: map['device'],
        display: map['display'],
        fingerprint: map['fingerprint'],
        hardware: map['hardware'],
        host: map['host'],
        id: map['id'],
        manufacturer: map['manufacturer'],
        model: map['model'],
        product: map['product'],
        supported32BitAbis: map['supported32BitAbis'],
        supported64BitAbis: map['supported64BitAbis'],
        supportedAbis: map['supportedAbis'],
        tags: map['tags'],
        type: map['type'],
        isPhysicalDevice: map['isPhysicalDevice'],
        androidId: map['androidId'],
        systemFeatures: map['systemFeatures'],
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        'version.securityPatch': securityPatch,
        'version.sdkInt': sdkInt,
        'version.release': release,
        'version.previewSdkInt': previewSdkInt,
        'version.incremental': incremental,
        'version.codename': codename,
        'version.baseOS': baseOS,
        'board': board,
        'bootloader': bootloader,
        'brand': brand,
        'device': device,
        'display': display,
        'fingerprint': fingerprint,
        'hardware': hardware,
        'host': host,
        'id': id,
        'manufacturer': manufacturer,
        'model': model,
        'product': product,
        'supported32BitAbis': supported32BitAbis,
        'supported64BitAbis': supported64BitAbis,
        'supportedAbis': supportedAbis,
        'tags': tags,
        'type': type,
        'isPhysicalDevice': isPhysicalDevice,
        'androidId': androidId,
        'systemFeatures': systemFeatures,
      };
}
