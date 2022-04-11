


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Core.dart';

class LoginNamix extends StatefulWidget {
  const LoginNamix({Key? key}) : super(key: key);

  @override
  State<LoginNamix> createState() => _LoginNamixState();
}

class _LoginNamixState extends State<LoginNamix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.primaryColor,
      body: TextButton(
        onPressed: (){
          Navigator.pop(context, true);
        },
        child: Text("Voltar", style: TextStyle(color: Colors.white,)),
      ),
    );
  }
}