import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'kalkulator_baru.dart';
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
      initialRoute: Routes.registration,
      getPages: Routes.pages,
    );
  }
}

