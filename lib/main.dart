import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_image_picker/getx_image_picker.dart';
import 'getx_state_management/getx_color_opacity_example.dart';
import 'getx_state_management/getx_counter_example.dart';
import 'getx_state_management/icon_select_app.dart';
import 'getx_state_management/switch_notification_example.dart';
import 'language_change/change_app_language.dart';
import 'getx_utils/getx_height_width.dart';
import 'language_change/language_class.dart';
import 'navigation_routes/get_navigation_routes.dart';
import 'navigation_routes/player_screens.dart';


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
      locale:  Locale('en','US'),
      translations: Language(),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const GetxImagePicker (),
      // getPages: [
      //   GetPage(name: '/', page:()=> GetNavigationRoutes() ),
      //   GetPage(name: '/playerScreen', page:()=> PlayerScreens() ),
      // ],

    );
  }
}


