import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  static late SharedPreferenceService _instance;
  static late SharedPreferences _preferenceService;

  SharedPreferences get preference => _preferenceService;

  static Future<SharedPreferenceService> getInstance() async {
    if (_instance == null) {
      _instance = SharedPreferenceService();
    }
    if (_preferenceService == null) {
      _preferenceService = await SharedPreferences.getInstance();
    }

    return _instance;
  }

  bool? isAuthRemembered() {
    return _preferenceService.getBool('remember_me');
  }
}
