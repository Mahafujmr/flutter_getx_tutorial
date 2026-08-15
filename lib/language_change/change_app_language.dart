import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ChangeAppLanguage extends StatefulWidget {
  const ChangeAppLanguage({super.key});

  @override
  State<ChangeAppLanguage> createState() => _ChangeAppLanguageState();
}

class _ChangeAppLanguageState extends State<ChangeAppLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx App Language Change"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          ListTile(
            title: Text('massage'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(height: 50,),
          Row(

            children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'),);
            }, child: Text("English"),) ,
              SizedBox(width: 50,),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  Get.updateLocale(Locale('bn', 'BD'),);
                }, child: Text("Bangla"),) ,
              SizedBox(width: 50,),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  Get.updateLocale(Locale('ur', 'PK'),);
                }, child: Text("Urdo"),) ,
            ],
          ),
        ],
      ),
    );
  }
}
