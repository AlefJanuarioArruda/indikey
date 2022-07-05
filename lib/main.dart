import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:indikey/Componentes/constant.dart';
import 'package:indikey/Dashboard/dashboard.dart';
import 'package:indikey/Get_started/login.dart';
import 'package:indikey/Home/HomeScreen.dart';

import 'Site options/Empresas/Ui empresas.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'IndiKey',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,

        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:
      Home(),
     // Dashboard(),
      //Empresa_widget(),
    );
  }
}