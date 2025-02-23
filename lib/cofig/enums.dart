import 'package:toddle_bee_app/cofig/color_config.dart';

import 'app_config.dart';


const appTarget = AppTarget.production;
const targetDevice = TargetDevice.mobile;
final targetDetail = AppConfig(target: appTarget, device: targetDevice);
final targetDetailColor = ColorConfig(target: appTarget);



enum AppTarget { local, testing, production }

enum TargetDevice { mobile, web, desktop }
