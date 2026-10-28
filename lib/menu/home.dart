
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/list_produk_cntroller.dart';
import 'package:get/get.dart';
import '../pages/main_menu_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ListProdukController());

    return Scaffold(
     appBar: AppBar(
  title: const Text(
    'Daftar Makanan',
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
  backgroundColor: const Color.fromARGB(255, 177, 18, 18),
  foregroundColor: Colors.white,
  actions: [
    MainMenuDrawer(),
  ],
),
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Pilihan Makanan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: controller.ListProduk.length,
                itemBuilder: (context, index) {
                  final produk = controller.ListProduk[index];

                  return Container(
                    width: 160,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Card(
                      elevation: 3,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              child: Image.asset(
                                produk.foto,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Center(
                                    child: Icon(
                                      Icons.fastfood,
                                      size: 50,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  produk.namaProduk,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  produk.harga,
                                  style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       scrollDirection: Axis.horizontal,
//       children: [
//         Container(
//           width: 180,
//           height: 150,
//           margin: const EdgeInsets.all(8),
//           color: Colors.blue,
//           child: const Center(
//             child: Text(
//               'Home 1',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//         Container(
//           width: 180,
//           height: 150,
//           margin: const EdgeInsets.all(8),
//           color: Colors.green,
//           child: const Center(
//             child: Text(
//               'Home 2',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//         Container(
//           width: 180,
//           height: 150,
//           margin: const EdgeInsets.all(8),
//           color: Colors.orange,
//           child: const Center(
//             child: Text(
//               'Home 3',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
 