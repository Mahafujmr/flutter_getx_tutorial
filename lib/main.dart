import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_note/getx_utils/get_bottom_sheet.dart';
import 'package:getx_tutorial_note/getx_utils/get_default_dialog.dart';
import 'package:getx_tutorial_note/getx_utils/get_snack_bar.dart';

import 'getx_utils/get_light_dark_mode.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const GetLightDarkMode (),


    );
  }
}


