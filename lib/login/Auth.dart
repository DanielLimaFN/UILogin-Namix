import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../Core.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: <Widget>[
              Image.asset(
                "assets/img/background.jpg",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: Center(
                  child: Column(
                    children: const [
                      SizedBox(width: 300, height: 160),
                      Text(
                        'Bem Vindo',
                        style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Crie ou entre em sua conta',
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding:
                      const EdgeInsets.only(top: 25, left: 80, right: 80),
                      child: RaisedButton(
                        onPressed: () {
                          menulogin(context);
                        },
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Cores.secondaryColor,
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding:
                      const EdgeInsets.only(top: 25, left: 80, right: 80),
                      child: RaisedButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Cores.primaryColor,
                        onPressed: () {
                          menuRegister(context);
                        },
                        child: const Text(
                          'Cadastre-se',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void menuRegister(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Cores.primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(25),
          topStart: Radius.circular(25),
        ),
      ),
      builder: (context) => Container(
        padding: const EdgeInsetsDirectional.only(
          start: 20,
          end: 20,
          bottom: 30,
          top: 8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Cores.primaryColor,
              height: 500,
              child: ListView(
                children: <Widget>[
                  const SizedBox(width: 25, height: 25),
                  Column(children: const [
                    Text("Crie sua Conta",
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 24,
                            color: Colors.white),
                        textAlign: TextAlign.center),
                    SizedBox(width: 25, height: 25),
                  ]),

                  const SizedBox(width: 30, height: 30),

                  TextFormField(
                    autocorrect: false,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                    decoration: const InputDecoration(
                      icon: Icon(Icons.account_circle,
                          color: Cores.secondaryColor),
                      hintText: "Seu Nome",
                      filled: true,
                      fillColor: Cores.secondaryColor,
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Akrobat-Bold',
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Cores.primaryColor, width: 0.5),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15, height: 15),

                  TextFormField(
                    autocorrect: false,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                    decoration: const InputDecoration(
                      icon:
                      Icon(Icons.mail_outline, color: Cores.secondaryColor),
                      hintText: "Email",
                      filled: true,
                      fillColor: Cores.secondaryColor,
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Akrobat-Bold',
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Cores.primaryColor, width: 0.5),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15, height: 15),

                  TextFormField(
                    autocorrect: false,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                    decoration: const InputDecoration(
                      icon: Icon(LineIcons.key, color: Cores.secondaryColor),
                      hintText: "Senha",
                      filled: true,
                      fillColor: Cores.secondaryColor,
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Akrobat-Bold',
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Cores.primaryColor, width: 0.5),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(width: 15, height: 15),
                  TextFormField(
                    autocorrect: false,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                    decoration: const InputDecoration(
                      icon: Icon(LineIcons.key, color: Cores.secondaryColor),
                      hintText: "Digite novamente a senha.",
                      filled: true,
                      fillColor: Cores.secondaryColor,
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Akrobat-Bold',
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Cores.primaryColor, width: 0.5),
                      ),
                    ),
                    obscureText: true,
                  ),
                  //SizedBox(width: 10,height: 10),
                  Container(
                    padding:
                    const EdgeInsets.only(top: 15, left: 111, right: 111),
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Cores.secondaryColor,
                      child: const Text(
                        'Criar conta',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  //SizedBox(width: 7,height: 7,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void menulogin(context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    backgroundColor: Cores.primaryColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadiusDirectional.only(
        topEnd: Radius.circular(25),
        topStart: Radius.circular(25),
      ),
    ),
    builder: (context) => Container(
      padding: const EdgeInsetsDirectional.only(
        start: 20,
        end: 20,
        bottom: 30,
        top: 8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Cores.primaryColor,
            height: 400,
            child: ListView(
              children: <Widget>[
                const SizedBox(width: 25, height: 25),
                Column(children: const [
                  Text("Entre em sua conta",
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 24,
                          color: Colors.white),
                      textAlign: TextAlign.center),
                  SizedBox(width: 25, height: 25),
                  Text(
                    "Utilize o mesmo email e senha que você costuma utilizar nas versões do aplicativo para Iphone, MacBook , Windows e Android",
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ]),

                const SizedBox(width: 30, height: 30),

                TextFormField(
                  autocorrect: false,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400),
                  decoration: const InputDecoration(
                    icon: Icon(Icons.mail_outline, color: Cores.secondaryColor),
                    hintText: "Email",
                    filled: true,
                    fillColor: Cores.secondaryColor,
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Akrobat-Bold',
                        fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Cores.primaryColor, width: 0.5),
                    ),
                  ),
                ),

                const SizedBox(width: 15, height: 15),

                TextFormField(
                  autocorrect: false,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400),
                  decoration: const InputDecoration(
                    icon: Icon(LineIcons.key, color: Cores.secondaryColor),
                    hintText: "Senha",
                    filled: true,
                    fillColor: Cores.secondaryColor,
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Akrobat-Bold',
                        fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Cores.primaryColor, width: 0.5),
                    ),
                  ),
                  obscureText: true,
                ),
                //SizedBox(width: 10,height: 10),
                Container(
                  padding:
                  const EdgeInsets.only(top: 15, left: 170, right: 170),
                  child: RaisedButton(
                    onPressed: () {

                    },
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Cores.secondaryColor,
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //SizedBox(width: 7,height: 7,),

                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Esqueci minha senha",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ))
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
