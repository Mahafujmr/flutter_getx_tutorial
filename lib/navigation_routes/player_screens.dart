import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PlayerScreens extends StatefulWidget {
  final String name;
  const PlayerScreens({super.key,this.name=' '});

  @override
  State<PlayerScreens> createState() => _PlayerScreensState();
}

class _PlayerScreensState extends State<PlayerScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Player Board"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
             // Navigator.pop(context);
              Get.back();
        }, icon: Icon(Icons.keyboard_backspace),),
        actions: [
          IconButton(onPressed: () {
            Get.changeTheme(ThemeData.light());
          },
              icon: Icon(Icons.light_mode),),
          IconButton(onPressed: () {
            Get.changeTheme(ThemeData.dark());
          },
            icon: Icon(Icons.dark_mode),),
        ],
      ),
      body:Column(
        children: [
          Row(
            children: [
              Card(
                margin: EdgeInsets.all(20),
                shadowColor: Colors.red,
                elevation: 20,
                surfaceTintColor: Colors.yellow,
                child: Image.asset("images/p1.jpg"),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text('Tamim'),
                    Text('Cricketer'),
                    Text('Bangladesh National Team'),
                  ],
                ),
              ),
            ],
          ),
          Text("Md Tuhin ${widget.name}"),

        ],
      ),
    );
  }
}
