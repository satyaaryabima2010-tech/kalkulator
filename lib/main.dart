
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Belajar Flutter pplg 3',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.mainMenuDrawer,
      getPages: Routes.pages,
    );
  }
}



















// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'kalkulator_baru.dart';
// import 'pages/Confirm_Regristation_page.dart';
// import 'pages/list_produk_page.dart';
// import 'routes.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Belajar Flutter pplg 3',
//       initialRoute: Routes.listProduk,
//       getPages: Routes.pages,
//     );
//   }
// }

