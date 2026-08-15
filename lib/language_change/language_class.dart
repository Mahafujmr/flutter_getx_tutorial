import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations {
  @override
  Map<String ,Map<String,String>> get keys => {
    'en_US' :{
      'massage': 'What is your name?',
      'name' : 'MD Tuhin Hossain'
    },
    'bn_BD' :{
      'massage': 'তোমার নাম কি?',
      'name' : ' মো: তুহিন হোসেন'
    },
    'ur_PK' :{
      'massage': 'ما اسمك؟',
      'name' : 'محمد توحين حسين',
    },
  };
}