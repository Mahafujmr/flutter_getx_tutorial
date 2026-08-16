import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_note/getx_state_management/controller_class/counter_controller.dart';
class GetxCounterExample extends StatefulWidget {
  const GetxCounterExample({super.key});

  @override
  State<GetxCounterExample> createState() => _GetxCounterExampleState();
}

class _GetxCounterExampleState extends State<GetxCounterExample> {

  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: Text("GetX Counter App"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Obx(() => Text(controller.counter.toString(),style: TextStyle(fontSize: 50),), ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
      },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
    );
  }
}
