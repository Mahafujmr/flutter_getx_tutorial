import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_note/getx_state_management/controller_class/favourite_controller.dart';
class IconSelectApp extends StatefulWidget {
  const IconSelectApp({super.key});

  @override
  State<IconSelectApp> createState() => _IconSelectAppState();
}

final FavouriteController controller =Get.put(FavouriteController());

class _IconSelectAppState extends State<IconSelectApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Icon change App"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: controller.itemList.length,
        itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: (){
              if(controller.emptyList.contains(controller.itemList[index].toString())){
                controller.removeFavourite(controller.itemList[index].toString());
              }else{
                controller.addFavourite(controller.itemList[index].toString());
              }
            },
            title: Text(controller.itemList[index].toString()),
            trailing: Obx(() => Icon(Icons.favorite,
              color:controller.emptyList.contains(controller.itemList[index].toString()) ?Colors.red : Colors.white,
            ),),
          ),
        );
      },),
    );
  }
}
