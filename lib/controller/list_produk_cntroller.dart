
import 'package:flutter_application_1/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {

  List<ProdukModel> ListProduk = [
    ProdukModel(namaProduk: "Indomie Goreng Biasa", harga: "6000 Rp", foto: "foto/indomie.jpg", 
     deskripsi: "Indomie Goreng Biasa adalah makanan yang populer di Indonesia. Makanan ini memiliki rasa yang lezat dan cocok untuk dinikmati kapan saja.", ),
    ProdukModel(namaProduk: "Indomie Godhog", harga: "6000 Rp", foto: "foto/indomieGodhog.jpg", 
     deskripsi: "Indomie Godhog adalah varian Indomie yang memiliki rasa yang lebih kaya dan gurih. Makanan ini cocok untuk dinikmati sebagai camilan atau makanan utama.", ),
    ProdukModel(namaProduk: "Indomie Goreng Spesial", harga: "10.000 Rp", foto: "foto/indomieGrGS.jpg", 
     deskripsi: "Indomie Goreng Spesial adalah varian Indomie yang memiliki rasa yang lebih istimewa dan lezat. Makanan ini cocok untuk dinikmati sebagai camilan atau makanan utama.", ),
    ProdukModel(namaProduk: "Indomie Soto", harga: "6000 Rp", foto: "foto/indomieSoto.jpg", 
     deskripsi: "Indomie Soto adalah varian Indomie yang memiliki rasa yang khas dan lezat. Makanan ini cocok untuk dinikmati sebagai camilan atau makanan utama.", ),
    ProdukModel(namaProduk: "Indomie Rendang", harga: "6000 Rp", foto: "foto/indomieRndg.jpg", 
     deskripsi: "Indomie Rendang adalah varian Indomie yang memiliki rasa yang kaya dan gurih. Makanan ini cocok untuk dinikmati sebagai camilan atau makanan utama.", ),
  ];

}