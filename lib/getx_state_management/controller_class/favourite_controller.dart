import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> itemList = [
    'Dress','Food', 'Banana', 'mango','Potato'
  ].obs;
  RxList<dynamic> emptyList = [].obs;

  // create function
  void addFavourite (String value) {
    emptyList.add(value);
  }

  void removeFavourite (String value) {
    emptyList.remove(value);
  }

}

