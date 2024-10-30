import 'package:flutter_application_2/views/screens/Calculator.dart';
import 'package:flutter_application_2/views/screens/settings.dart';

import 'package:get/get.dart';

List <GetPage> routes = [
  GetPage(name:"/", page: () => Calculator()),
  GetPage(name:"/settings", page: () => Settings()),
];