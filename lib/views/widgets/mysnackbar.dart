import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/configs/colors.dart';
import 'package:get/get.dart';

mysnackbar ({required title, required message,required type}){
  return Get.snackbar(title, message,
  icon: Icon(
    
    Icons.error,
    color: appWhite,
  ),
  colorText: appWhite,
  backgroundColor: mainColor,
  snackPosition: SnackPosition.BOTTOM

  );
}