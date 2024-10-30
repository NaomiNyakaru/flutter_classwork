import 'package:flutter/material.dart';
import 'package:flutter_application_2/configs/routes.dart';
import 'package:flutter_application_2/views/screens/Calculator.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

main(){
  runApp(MyApp());

}
TextEditingController num1 = TextEditingController();
TextEditingController num2 = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: routes,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green.shade200,
        appBar: AppBar(
          title: Text("Flutter Progs"),
          backgroundColor: Colors.green.shade500,
          foregroundColor: Colors.white,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                print("refreshed");
              }, 
              icon: Icon(Icons.refresh) ),
            IconButton(
              onPressed: () {
                Get.toNamed("/settings");
              },
              icon: Icon(Icons.settings)),
          ],

        ),
        body: Calculator()
      ),
    );
  }
 
}

