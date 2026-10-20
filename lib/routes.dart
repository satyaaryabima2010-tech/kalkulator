//import 'package:flutter_application_1/models/produk_model.dart';
import 'package:flutter_application_1/models/produk_model.dart';
import 'package:get/get.dart';

import 'pages/Confirm_Regristation_page.dart';
import 'pages/Registrition_page.dart';
import 'pages/detail_produk_page.dart';
import 'pages/list_produk_page.dart';


class Routes {
  static const String listProduk = '/list-produk';
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirm-registration';
  static const String detailProduk = '/detail-produk';

  static final pages = [
    GetPage(name: listProduk, page: () => ListProdukPage()),
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: detailProduk, page: () => DetailProdukPage()),
  ];
    
}