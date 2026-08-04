import 'package:flutter/material.dart';
import 'package:get/get.dart';
class GetSnackbar extends StatefulWidget {
  const GetSnackbar({super.key});

  @override
  State<GetSnackbar> createState() => _GetSnackbarState();
}

class _GetSnackbarState extends State<GetSnackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Getx Tutorial'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.add,size: 40,),

        onPressed: () {
        Get.snackbar(
          'MD Tuhin Hossain', 'Flutter Developer',
          backgroundColor: Colors.red,
          icon: Icon(Icons.add),
        // barBlur: 0.5,
          borderRadius: 25,
          borderWidth: 22,
          colorText: Colors.black,
          forwardAnimationCurve:Curves.easeOut,
          snackPosition:SnackPosition.BOTTOM,
        );
      },),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
            onPressed: () {
              Get.snackbar(
                'MD Mahafuj Hossain', 'Flutter Developer',
                backgroundColor: Colors.white,
                icon: Icon(Icons.add),
                // barBlur: 0.5,
                borderRadius: 25,
                borderWidth: 22,
                colorText: Colors.black,
                forwardAnimationCurve:Curves.easeOut,
                snackPosition:SnackPosition.TOP,
              );
        }, child: Text('Tuhin'),
        ),
      ),
    );
  }
}
