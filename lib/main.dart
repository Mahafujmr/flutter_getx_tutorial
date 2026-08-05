import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_note/get_bottom_sheet.dart';
import 'package:getx_tutorial_note/get_default_dialog.dart';
import 'package:getx_tutorial_note/get_snack_bar.dart';


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
      home: const GetBottomSheet (),


    );
  }
}


