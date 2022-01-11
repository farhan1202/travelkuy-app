import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final navSelected = 0.obs;
  final carouselIndex = 0.obs;

  void changeNavSelected(int i) {
    navSelected.value = i;
  }

  void changeCarousel(int i) {
    carouselIndex.value = i;
  }
}
