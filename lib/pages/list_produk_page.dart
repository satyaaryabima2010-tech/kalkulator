import 'package:flutter/material.dart';

import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';
import '../controller/list_produk_cntroller.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Daftar Makanan',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 177, 18, 18),
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: controller.ListProduk.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final produk = controller.ListProduk[index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              // contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8,),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  produk.foto,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                produk.namaProduk,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                produk.harga,
                style: TextStyle(
                  color: const Color.fromARGB(255, 25, 129, 11),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.grey),
              onTap: () {
                  Get.toNamed(
                  Routes.detailProduk,
                  arguments: produk,
                );
              },
            ),
          );
        },
      ),
    );
  }
}