import 'package:get/get.dart';


class DetailListProdukController extends GetxController {
  late String namaProduk;
  late String harga;
  late String foto;
  late String deskripsi;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments as Map<String, dynamic>;
    namaProduk = arguments['name'];
    harga = arguments['harga'];
    foto = arguments['foto'] ;
    deskripsi = arguments['deskripsi'];
  }
}