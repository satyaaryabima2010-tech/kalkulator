import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs;

  void tambah(double angka1, double angka2) {
    final hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;
    Get.snackbar(
      "hasil jumlah",
      hasilTambah.toString(),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double angka1, double angka2) {
    final hasilKurang = angka1 - angka2;
    hasilHitung.value = hasilKurang;
  }

  void kali(double angka1, double angka2) {
    final hasilKali = angka1 * angka2;
    hasilHitung.value = hasilKali;
  }

  void bagi(double angka1, double angka2) {
    final hasilBagi = angka2 == 0 ? 0.0 : angka1 / angka2;
    hasilHitung.value = hasilBagi;
  }

  void hapus() {
    hasilHitung.value = 0.0;
  }
}