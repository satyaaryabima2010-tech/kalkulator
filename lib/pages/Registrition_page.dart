import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/my_textfield.dart';
import '../routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Registration")),
      body: Column(
        children: [
          MyTextField(hint: "input nama", controller: txtNama),
          // lanjutkan dengan form yang lain alamat jenis kelamin dll
          ElevatedButton(
            onPressed: () {
              // pindah tampilan dan mengirim data
              Get.toNamed(
                Routes.confirmRegistration,
                arguments: {
                  'name': txtNama.text.toString(),
                  'jenis_kelamin': "laki laki", //dari widget kalian
                },
              );
            },
            child: Text("send"),
          ),
        ],
      ),
    );
  }
}
