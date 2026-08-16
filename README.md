# Flutter GetX Tutorial

Step By Step Note ⇒ Flutter GetX
##  GetX State Management (Utils) Part :

## Topic Sort Note (Full Note Separate File this Project)

## এখানে GetX/Bloc/Provider/Riverpod নিয়ে সংক্ষিপ্ত বলা আছে - ([Here is Note](https://github.com/Mahafujmr/flutter_getx_tutorial/blob/main/Getx_Note/getx_note.md)),

### (1) Flutter Normal Project Start (Material App) Widget But GetX Start (GetMaterialApp)
- MaterialApp = GetMaterialApp - ([Here is Note](https://github.com/Mahafujmr/flutter_getx_tutorial/blob/main/Getx_Note/get_material_app.md)),

| **Flutter Entry** | **GetX Use**   |
|:------------------|:---------------|
| MaterialApp       | GetMaterialApp | 


### (2) Flutter Normal Project Use (snack bar) But GetX use (Get.snackbar)
- snack bar = Get.snackbar - ([Here is Note](https://github.com/Mahafujmr/flutter_getx_tutorial/blob/main/Getx_Note/get_snackbar.md))

  | **Flutter Entry** | **GetX Use** |
  |:------------------|:-------------|
  | snackbar       | Get.snackbar |

### (3) Flutter Normal Project Use (Alert Dialog) But GetX use (Get.defaultDialog)
- Alert Dialog = Get.defaultDialog- ([Here is Note](https://github.com/Mahafujmr/flutter_getx_tutorial/blob/main/Getx_Note/get_default_dialog.md))

| **Flutter Entry** | **GetX Use**   |
  |:------------------|:---------------|
| Alert Dialog       | Get.defaultDialog |

### (4) Flutter Normal Project Use (Bottom Sheet) But GetX use (Get.bottomsheet)
- Bottom Sheet = Get.bottomsheet - ([Here is Note](https://github.com/Mahafujmr/flutter_getx_tutorial/blob/main/Getx_Note/get_bottom_sheet.md))

| **Flutter Entry** | **GetX Use**   |
  |:------------------|:---------------|
| Bottom Sheet      |  Get.bottomsheet |


## 🚀 Theme Change (Light/ Dark)
### (1)Flutter Project Theme change use GetX -([Here is Note](https://github.com/Mahafujmr/flutter_getx_tutorial/blob/main/Getx_Note/get_theme_change.md))
- Light Theme -  Get.changeTheme(ThemeData.light());
- Dark Theme -  Get.changeTheme(ThemeData.dark());


## 🚀 GetX Navigation and GetX Routes
### (1)Flutter Normal Project use Back Screen(Navigator.pop(context)) But GetX Use (Get.back),
- Navigator.push(context, MaterialPageRoute(builder: (context)=> PlayerScreens()));= Get.to(Screen name());

- Navigator.pop(context) = Get.back(); 
#### Page Routes
- main.dart file use getPage 

````dart
- getPages: [
  GetPage(name: '/', page:()=> GetNavigationRoutes() ),
  GetPage(name: '/playerScreen', page:()=> PlayerScreens() ),
  ],
````
- Use This go to next Screen - 
````dart
 Get.toNamed('/playerScreen');
````
- Send Data next screen use
````dart
Get.toNamed('/playerScreen',arguments: [
                'Tuhin Hossain',
                'flutter app'
              ]);
````
- Receive Data use this
````dart
Text("Md Tuhin ${Get.arguments[0]}"),
````

### GetX Height and Width
- Flutter normal use 
````dart
height: MediaQuery.of(context).size.height * .8 ,
````
- GetX Use
````dart
height: Get.height * 0.2,
width: Get.width * 0.9,
````
## GetX State Management Main Part: 
#### Obx Part;
- Flutter use Data type But GetX use other Data Type
````dart
int => RxInt;
double => RxDouble;
bool => RxBool;
String => RxString ;
=> obs manage all Data Type for Getx <=
````