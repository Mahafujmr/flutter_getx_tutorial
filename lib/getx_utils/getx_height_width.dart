import 'package:flutter/material.dart';
import 'package:get/get.dart';
class GetxHeightWidget extends StatefulWidget {
  const GetxHeightWidget({super.key});

  @override
  State<GetxHeightWidget> createState() => _GetxHeightWidgetState();
}

class _GetxHeightWidgetState extends State<GetxHeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Height Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:  Column(
        children: [
          Container(
            //height: MediaQuery.of(context).size.height * .8 ,
            height: Get.height * 0.2,
            width: Get.width * 0.9,
            color: Colors.red,
            child: const Center(
              child: Text("Flutter Home"),
            ),
          ),
          Container(
            //height: MediaQuery.of(context).size.height * .8 ,
            height: Get.height * 0.2,
            width: Get.width * 0.9,
            color: Colors.green,
            child: const Center(
              child: Text("Flutter Home"),
            ),
          ),
        ],
      )
    );
  }
}
