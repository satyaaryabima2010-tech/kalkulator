import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/produk_model.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';
import '../controller/list_produk_cntroller.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

   Future<void> tampilkanContextMenu(
    BuildContext context,
    ProdukModel produk,
    int index,
    Offset posisi,
  ) async {
    final size = MediaQuery.of(context).size;

    final pilihan = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        posisi.dx,
        posisi.dy,
        size.width - posisi.dx,
        size.height - posisi.dy,
      ),
      items: const [
        PopupMenuItem(
          value: 'detail',
          child: Row(
            children: [
              Icon(Icons.info_outline),
              SizedBox(width: 10),
              Text('Lihat Detail'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'hapus',
          child: Row(
            children: [
              Icon(Icons.delete, color: Colors.red),
              SizedBox(width: 10),
              Text('Hapus'),
            ],
          ),
        ),
      ],
    );

    if (pilihan == 'detail') {
      Get.toNamed(
        Routes.detailProduk,
        arguments: produk,
      );
    } else if (pilihan == 'hapus') {
      controller.hapusProduk(produk);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${produk.namaProduk} dihapus'),
          action: SnackBarAction(
            label: 'Urungkan',
            onPressed: () {
              controller.pulihkanProduk(produk, index);
            },
          ),
        ),
      );
    }
  }


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
      body: Obx(
        () => RefreshIndicator(
          onRefresh: controller.refreshProduk,
          child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            itemCount: controller.ListProduk.length,

            separatorBuilder: (context, index) =>
                const SizedBox(height: 12),

            itemBuilder: (context, index) {
              final produk = controller.ListProduk[index];

              return Dismissible(
                key: ValueKey(produk.namaProduk),

                direction: DismissDirection.horizontal,

                background: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),

                secondaryBackground: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),

                onDismissed: (direction) {
                  controller.hapusProduk(produk);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${produk.namaProduk} dihapus',
                      ),
                      action: SnackBarAction(
                        label: 'Urungkan',
                        onPressed: () {
                          controller.pulihkanProduk(produk, index);
                        },
                      ),
                    ),
                  );
                },

                child: GestureDetector(
                  onLongPressStart: (details) {
                    tampilkanContextMenu(
                      context,
                      produk,
                      index,
                      details.globalPosition,
                    );
                  },

                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
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
                        style: const TextStyle(
                          color: Color.fromARGB(255, 25, 129, 11),
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      trailing: const Icon(
                        Icons.arrow_forward,
                        color: Colors.grey,
                      ),

                      onTap: () {
                        Get.toNamed(
                          Routes.detailProduk,
                          arguments: produk,
      // body: ListView.separated(
      //   padding: const EdgeInsets.all(16),
      //   itemCount: controller.ListProduk.length,
      //   separatorBuilder: (context, index) => const SizedBox(height: 12),
      //   itemBuilder: (context, index) {
      //     final produk = controller.ListProduk[index];
      //     return Card(
      //       elevation: 3,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(12),
      //       ),
      //       child: ListTile(
      //         // contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8,),
      //         leading: ClipRRect(
      //           borderRadius: BorderRadius.circular(8),
      //           child: Image.asset(
      //             produk.foto,
      //             width: 50,
      //             height: 50,
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         title: Text(
      //           produk.namaProduk,
      //           style: const TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 16,
      //           ),
      //         ),
      //         subtitle: Text(
      //           produk.harga,
      //           style: TextStyle(
      //             color: const Color.fromARGB(255, 25, 129, 11),
      //             fontWeight: FontWeight.w600,
      //           ),
      //         ),
      //         trailing: const Icon(Icons.arrow_forward, color: Colors.grey),
      //         onTap: () {
      //             Get.toNamed(
      //             Routes.detailProduk,
      //             arguments: produk,
                );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}