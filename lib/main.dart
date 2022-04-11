import 'package:flutter/material.dart';
import 'package:namixlogin/login/Welcome.dart';
import 'Core.dart';
import 'login/LoginScreen.dart';

void main() {
    runApp(
      const MaterialApp(
        color: Cores.primaryColorDark,
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen() ,
    ),
  );
}
