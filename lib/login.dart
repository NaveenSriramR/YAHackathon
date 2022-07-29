import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/login_background.png"),
                  fit: BoxFit.cover),
            ),
            child: Center(
                child: Column(children: [
              Container(
                  padding: const EdgeInsets.only(top: 60, left: 100),
                  child: const Text("Welcome",
                      style: TextStyle(
                          fontFamily: 'DancingScript',
                          fontSize: 60,
                          color: Color.fromARGB(255, 102, 50, 76)))),
              Container(
                  padding: const EdgeInsets.only(top: 70, left: 20),
                  child: const Text("Life goes on with Try Onn...",
                      style: TextStyle(
                          fontFamily: 'DancingScript',
                          fontSize: 35,
                          color: Color.fromARGB(255, 102, 50, 76)))),
              Container(
                padding: const EdgeInsets.only(top: 0, left: 0),
                child: Container(
                    padding: const EdgeInsets.only(top: 0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      scale: 1.0,
                    )),
              ),
              Container(
                  child: SignInButton(
                Buttons.GoogleDark,
                text: "Sign up with Google",
                onPressed: () {},
              )),
              Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Text("Sign up now!",
                      style: TextStyle(
                          fontFamily: 'DancingScript',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 243, 199, 68)))),
            ]))));
  }
}
