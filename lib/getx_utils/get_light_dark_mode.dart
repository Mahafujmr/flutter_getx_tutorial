import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class GetLightDarkMode extends StatefulWidget {
  const GetLightDarkMode({super.key});

  @override
  State<GetLightDarkMode> createState() => _GetLightDarkModeState();
}

class _GetLightDarkModeState extends State<GetLightDarkMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Light And Dark  Mode'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: .center,
          mainAxisAlignment: .center,
          children: [
            Row(
              mainAxisAlignment: .center,
              children: [
                Text("Light Mode",style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                ),),
                IconButton(onPressed: () {
                  Get.changeTheme(ThemeData.light());
                }, icon: Icon(Icons.light_mode),),
              ],
            ),
            Divider(
              height: 5,
              color: Colors.red,
              thickness: 4,
            ),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text("Dark Mode",style: TextStyle(
                  fontSize: 30,

                ),),
                IconButton(onPressed: () {
                  Get.changeTheme(ThemeData.dark());
                }, icon: Icon(Icons.dark_mode),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
