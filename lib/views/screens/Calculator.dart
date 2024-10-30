import 'package:flutter/material.dart';
import 'package:flutter_application_2/configs/colors.dart';
import 'package:flutter_application_2/controllers/calculatorcontroller.dart';
import 'package:flutter_application_2/views/widgets/mytextfield.dart';
import 'package:get/get.dart';


class Calculator extends StatelessWidget{
  TextEditingController nameInput = TextEditingController();
  TextEditingController adminNoInput = TextEditingController();
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  TextEditingController num3 = TextEditingController();

  // int a = 0;
  // int b = 0;
  // int c = 0;

  //declaring objects of a controller class
  Calculatorcontroller calculatorcontroller = Get.put(Calculatorcontroller());


  @override
  Widget build(BuildContext context) {
    return Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20,50,20,20),
            child: Container(
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.green.shade100,
                border: Border.all(color: Colors.green.shade100, width:5)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    myTextField(controller: nameInput, icon:Icons.person, hint:"Enter your name"),
                    SizedBox(
                      height: 10,
                    ),
                    myTextField(controller: adminNoInput, icon:Icons.person, hint:"Enter your admission no:"),
                    SizedBox(
                      height: 10,
                    ),
                    myTextField(controller: num1, icon:Icons.person, hint:"Enter Password"),
                    SizedBox(
                      height: 10,
                    ),
                    myTextField(controller: num2, hint:"password", icon:Icons.key),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(onPressed: (){
                      if(nameInput.text.isEmpty){
                        Get.snackbar("Validation", "Please provide name",
                        icon: Icon(Icons.error), backgroundColor: mainColor, snackPosition: SnackPosition.BOTTOM);
                      }
                        calculatorcontroller.name.value = nameInput.text;
                        calculatorcontroller.adminNo.value = adminNoInput.text;
                        // calculatorcontroller.compute(
                        //   int.parse(num1.text),int.parse(num2.text));
                
                    }, child: Text("Calculate")),
                  Obx(() => Text("Hi ${calculatorcontroller.name.value}, ${calculatorcontroller.adminNo.value},the sum of ${calculatorcontroller.a.value} and ${calculatorcontroller.b.value} is ${calculatorcontroller.c.value}"))
                  ],
                ),
              ),
            ),
          ),
        );
  }
   //User defined functions 
  addNumbers(a,b)=> a + b;
}