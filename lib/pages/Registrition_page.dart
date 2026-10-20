import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../component/my_textfield.dart';
import '../routes.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final txtNama = TextEditingController();
  final txtAlamat = TextEditingController();
  final txtJenisKelamin = TextEditingController();
  final txtUmur = TextEditingController();

  @override
  void dispose() {
    txtNama.dispose();
    txtAlamat.dispose();
    txtJenisKelamin.dispose();
    txtUmur.dispose();
    super.dispose();
  }

  Widget _field({
    required String label,
    required String hint,
    required TextEditingController controller,
    TextInputType? keyboardType,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF253B35),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        MyTextField(
          hint: hint,
          controller: controller,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          filled: true,
          fillColor: Colors.white,
         
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F6F3),
      appBar: AppBar(
        title: const Text("Registrasi manager kopdes"),
        backgroundColor: const Color(0xFFF2F6F3),
        foregroundColor: const Color(0xFF253B35),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 520),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 52,
                    height: 5,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE07B5A),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(height: 22),
                  const Text(
                    "Lengkapi data diri",
                    style: TextStyle(
                      color: Color(0xFF253B35),
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                 
                  ),
                  const SizedBox(height: 28),
                  _field(
                    label: "Nama",
                    hint: "Masukkan nama",
                    controller: txtNama,
                   
                  ),
                  const SizedBox(height: 18),
                  _field(
                    label: "Alamat",
                    hint: "Masukkan alamat",
                    controller: txtAlamat,
                  
                  ),
                  const SizedBox(height: 18),
                  _field(
                    label: "Jenis kelamin",
                    hint: "Contoh: Perempuan atau laki-laki",
                    controller: txtJenisKelamin,
                 
                  ),
                  const SizedBox(height: 18),
                  _field(
                    label: "Umur",
                    hint: "Masukkan umur",
                    controller: txtUmur,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                  const SizedBox(height: 28),
                  SizedBox(
                    height: 54,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Get.toNamed(
                          Routes.confirmRegistration,
                          arguments: {
                            'name': txtNama.text,
                            'alamat': txtAlamat.text,
                            'jenis_kelamin': txtJenisKelamin.text,
                            'umur': txtUmur.text,
                          },
                        );
                      },
                      icon: const Icon(Icons.arrow_forward_rounded),
                      label: const Text("Kirim data"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF285C4D),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
