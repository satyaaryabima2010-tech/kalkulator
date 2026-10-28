import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/main_menu_controller.dart';
import 'package:flutter_application_1/pages/main_menu_drawer.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';

class MainMenuPage extends StatelessWidget {
   MainMenuPage({super.key});

final MainMenuController controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        index: controller.selectedIndex.value,
        children: controller.pages,
      ),
      bottomNavigationBar: controller.selectedIndex.value == 0 
    ? null
  
      :BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        onTap: controller.changePage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
      ),
    
    ));
  }
}