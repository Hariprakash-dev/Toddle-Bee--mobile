import 'enums.dart';

class AppConfig {
  final AppTarget target;
  late final String appname;
  late final String url;
  late final String imgurl;
  late final int pageTransitionDuration;
  late final String printerIP;
  final TargetDevice device;

  AppConfig({required this.target, required this.device}) {
    switch (target) {
      case AppTarget.local:
        appname = "Development";
        // url = "http://192.168.0.178:8000/api/";
        // imgurl = "http://192.168.0.178:8000/";
        url = "http://192.168.1.44:8082/api/";
        imgurl = "http://192.168.1.44:8082/storage/";
        break;
      case AppTarget.testing:
        appname = "Testing";
        url = "https://pro.ipro-school.com/api/";
        imgurl = "https://pro.ipro-school.com/";
        break;
      case AppTarget.production:
        appname = "Production";
        url = "https://toddlebee.com/api/";
        imgurl = "https://toddlebee.com/storage/";
        break;
    }
    pageTransitionDuration = 150;
  }
}
