import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:paylater_startup/paylater/success_page.dart';
import 'package:paylater_startup/paylater/verification.dart';
import 'package:paylater_startup/product_description_page/desc_screen.dart';
import 'package:paylater_startup/shopping_page/shopping_page.dart';
import 'package:paylater_startup/store_page/store_page.dart';
import 'package:paylater_startup/util/theme.dart';

import 'category/category_page.dart';
import 'dashboard/dashboard_page.dart';
import 'login_screen/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paylater Startup',
      theme: theme(),
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 1),
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => DashboardPage()),
        GetPage(name: '/product_desc', page: () => productDesc_screen()),
        GetPage(name: '/category_screen', page: () => const CategoryPage()),
        GetPage(name: '/shopping_screen', page: () => const shopping_page()),
        GetPage(name: '/store_screen', page: () => const store_page()),
        GetPage(name: '/verif', page: () => const payLater_Verification()),
        GetPage(name: '/verif_success', page: () => const success_page()),
      ],
      home: const DashboardPage(),
      );
  }
}
