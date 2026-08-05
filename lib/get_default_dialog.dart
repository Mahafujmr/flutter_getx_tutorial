import 'package:flutter/material.dart';
import 'package:get/get.dart';
class GetDefaultDialog extends StatefulWidget {
  const GetDefaultDialog({super.key});

  @override
  State<GetDefaultDialog> createState() => _GetDefaultDialogState();
}

class _GetDefaultDialogState extends State<GetDefaultDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Getx Default Dialog'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('MD Tuhin'),
              subtitle: Text('Flutter Developer'),
              onTap: (){
                Get.defaultDialog(
                  title: "Exit Page",
                  //
                  // textCancel: "yes",
                  // textConfirm: "OK",
                  backgroundColor: Colors.white,
                  cancelTextColor: Colors.deepOrange,
                 // buttonColor: Colors.blue,
                  confirmTextColor: Colors.orange,
                  middleText: "are you sure ",
                  contentPadding: EdgeInsets.all(30),
                  titlePadding: EdgeInsets.only(top: 30),
                  confirm: TextButton(onPressed: (){
                    //Navigator.pop(context);
                    Get.back();
                  }, child:Text("OK"),),
                  cancel: TextButton(onPressed: (){}, child:Text("Cancel"),),
                  //multiple widget add.
                  content: Column(
                    children: [
                      Text('Are Your sure'),
                      Text('Are Your sure'),
                      Text('Are Your sure'),
                      Text('Are Your sure'),
                    ],
                  )

                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('MD Tuhin'),
              subtitle: Text('Flutter Developer'),
            ),
          ),
        ],
      ),
    );
  }
}
