
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ConfirmregistrationController extends GetxController {
  late String nama;
  late String alamat;
  late String jenisKelamin;
  late String umur;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    alamat = arguments['alamat'];
    jenisKelamin = arguments['jenis_kelamin'];
    umur = arguments['umur'];
  }
}