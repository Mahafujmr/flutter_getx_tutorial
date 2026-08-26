import 'package:get/get.dart';

class CounterController extends GetxController{
  RxDouble opacity = .4.obs;
  // create function (Example -02)
 void setOpacity(dynamic value) {
  opacity.value = value;
}

  RxInt counter = 1.obs;
  // create function (Example -01)
void increment (){
  counter.value ++;
  print(counter.value);
}
}