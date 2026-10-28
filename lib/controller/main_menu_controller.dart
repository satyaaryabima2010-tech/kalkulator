
import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu/history.dart';
import 'package:flutter_application_1/menu/home.dart';
import 'package:flutter_application_1/menu/profile.dart';
import 'package:flutter_application_1/controller/list_produk_cntroller.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  late final ListProdukController produkController;

  final List<Widget> pages = [
    const HomePage(),
    const ProfilePage(),
    const HistoryPage(),
  ];

  @override
  void onInit() {
    super.onInit();
    produkController = Get.put(ListProdukController());
  }

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
