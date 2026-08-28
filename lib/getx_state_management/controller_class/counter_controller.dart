import 'package:get/get.dart';

class CounterController extends GetxController{


  // create function (Example -03)
  RxBool notify = false.obs;
  // function
  void setNotify(bool value) {
    notify.value = value;
  }

  // create function (Example -02)
  RxDouble opacity = .4.obs;
  // function
 void setOpacity(dynamic value) {
  opacity.value = value;
}

  // create function (Example -01)
  RxInt counter = 1.obs;
 // function
void increment (){
  counter.value ++;
  print(counter.value);
}


}