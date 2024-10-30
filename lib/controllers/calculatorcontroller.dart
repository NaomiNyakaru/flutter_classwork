//import 'package:get/state_manager.dart';
import 'package:get/get.dart';

// variables whose value we are tracking
class Calculatorcontroller extends GetxController{
  var name = ''.obs;
  var adminNo = ''.obs;
  var a = 0.obs;
  var b = 0.obs;
  var c = 0.obs;

  compute(x,y){
    a.value = x;
    b.value = y;
    c.value = x + y;
  }

}
