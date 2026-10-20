import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/confirmregistration.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmregistrationController());

    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama " + controller.nama.toString(),
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          Text(
            "Alamat " + controller.alamat.toString(),
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          Text(
            "Jenis Kelamin " + controller.jenisKelamin.toString(),
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          Text(
            "Umur " + controller.umur.toString(),
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          // others data jenis kelamin, alamat dll
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("oke"),
          ),
        ],
      ),
    );
  }
}