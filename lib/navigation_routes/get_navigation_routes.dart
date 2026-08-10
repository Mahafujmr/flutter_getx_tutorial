// get - Navigation OR Routes
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_tutorial_note/navigation_routes/player_screens.dart';
class GetNavigationRoutes extends StatefulWidget {
  const GetNavigationRoutes({super.key});

  @override
  State<GetNavigationRoutes> createState() => _GetNavigationRoutesState();
}

class _GetNavigationRoutesState extends State<GetNavigationRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Navigation & Routes'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
         // Navigator.push(context, MaterialPageRoute(builder: (context)=> PlayerScreens()));
            //  Get.to(PlayerScreens(name: " Hossain",));
              Get.toNamed('/playerScreen');
        }, child: Text("Player Screen"),),
      ),
    );
  }
}
