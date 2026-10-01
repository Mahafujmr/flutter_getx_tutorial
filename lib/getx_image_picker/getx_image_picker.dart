import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial_note/getx_image_picker/image_picker_controller.dart';
class GetxImagePicker extends StatefulWidget {
  const GetxImagePicker({super.key});

  @override
  State<GetxImagePicker> createState() => _GetxImagePickerState();
}

class _GetxImagePickerState extends State<GetxImagePicker> {

  ImagePickerController controller = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker App'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: controller.imagePath.isNotEmpty ?
                FileImage(File(controller.imagePath.toString())) :null
              ),
            ),
            TextButton(onPressed: () {
              controller.getImage();
            }, child: Text("Pick Image")),
          ],
        );
      },),
    );
  }
}
