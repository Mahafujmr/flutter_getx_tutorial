import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt counter = 1.obs;




  // create function
void increment (){
  counter.value ++;
  print(counter.value);
}
}