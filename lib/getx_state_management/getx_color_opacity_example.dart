import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial_note/getx_state_management/controller_class/counter_controller.dart';
class GetxColorOpacityExample extends StatefulWidget {
  const GetxColorOpacityExample({super.key});

  @override
  State<GetxColorOpacityExample> createState() => _GetxColorOpacityExampleState();
}

final CounterController counterController = Get.put(CounterController());
class _GetxColorOpacityExampleState extends State<GetxColorOpacityExample> {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Color Opacity'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Obx(() => Container(
            height: 250,
            width: 250,
            color: Colors.red.withValues(alpha: counterController.opacity.value),
          ),),
         Obx(() =>  Slider(value: counterController.opacity.value, onChanged: (value) {
           counterController.setOpacity(value);

         },),)
        ],
      )
    );
  }
}
