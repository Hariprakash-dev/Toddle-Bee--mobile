import 'app_config.dart';


const appTarget = AppTarget.production;
const targetDevice = TargetDevice.mobile;
final targetDetail = AppConfig(target: appTarget, device: targetDevice);


enum AppTarget { local, testing, production }

enum TargetDevice { mobile, web, desktop }
