import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'component/my_textfield.dart';
import 'controller/kalkulator_controller.dart';

class KalkulatorBaru extends StatelessWidget {
  KalkulatorBaru({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    final txtangka1 = TextEditingController();
    final txtangka2 = TextEditingController();

    // Fungsi validasi dan eksekusi
    void hitung(Function(double, double) operasi) {
      if (txtangka1.text.trim().isEmpty || txtangka2.text.trim().isEmpty) {
        Get.snackbar(
          "Peringatan",
          "Harap isi kedua angka terlebih dahulu!",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
          margin: const EdgeInsets.all(12),
          duration: const Duration(seconds: 2),
        );
        return;
      }

      double num1 = double.parse(txtangka1.text);
      double num2 = double.parse(txtangka2.text);
      operasi(num1, num2);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            MyTextField(
              hint: "input angka 1",
              controller: txtangka1,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 12),
            MyTextField(
              hint: "input angka 2",
              controller: txtangka2,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => hitung((a, b) => controller.tambah(a, b)),
                  child: const Text("tambah"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => hitung((a, b) => controller.kurang(a, b)),
                  child: const Text("-"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => hitung((a, b) => controller.kali(a, b)),
                  child: const Text("×"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => hitung((a, b) => controller.bagi(a, b)),
                  child: const Text("÷"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    controller.hapus();
                    txtangka1.clear();
                    txtangka2.clear();
                  },
                  child: const Text("Hapus"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Obx(
              () => Text(
                "Hasil: ${controller.hasilHitung}",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}