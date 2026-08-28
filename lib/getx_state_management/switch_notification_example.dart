import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial_note/getx_state_management/controller_class/counter_controller.dart';
class SwitchNotificationExample extends StatefulWidget {
  const SwitchNotificationExample({super.key});

  @override
  State<SwitchNotificationExample> createState() => _SwitchNotificationExampleState();
}

class _SwitchNotificationExampleState extends State<SwitchNotificationExample> {
  //bool notification = false;
  CounterController notification = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Switch App"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Row(
        mainAxisAlignment: .spaceAround,
        children: [
          Text("Notification",style:
            TextStyle(
              fontSize: 33,color: Colors.red,
            ),),
          Obx(() => Switch(value: notification.notify.value, onChanged: (value) {
            notification.setNotify(value);
          },),)
        ],
      ),
    );
  }
}
