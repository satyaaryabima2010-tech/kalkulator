import 'package:get/get.dart';

import 'pages/Confirm_Regristation_page.dart';
import 'pages/Registrition_page.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirm-registration';

  static final pages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage())
  ];
}