import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tikotk_clone/Controllers/auth_controller.dart';
import 'package:tikotk_clone/Views/Screens/auth/SignUp.dart';
import 'package:tikotk_clone/Views/Screens/auth/login.dart';
import 'package:tikotk_clone/constants.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value){
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:
    backgroundColor,),
    home: LoginScreen(),
    );
  }
}
