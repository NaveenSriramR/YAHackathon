import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/profile_background.png"),
                  fit: BoxFit.cover),
            ),
            child: Center(
                child: Column(children: [
              Container(
                padding: const EdgeInsets.only(top: 150, left: 0),
                child: Container(
                    padding: const EdgeInsets.only(top: 0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      scale: 1.0,
                    )),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 0, left: 20),
                  child: const Text("Life goes on with Try Onn...",
                      style: TextStyle(
                          fontFamily: 'DancingScript',
                          fontSize: 35,
                          color: Color(0xffff9900)))),
              Container(
                  child: SignInButton(
                text: "Sign in with Google",
                Buttons.GoogleDark,
                onPressed: () {},
              ))
            ]))));
  }
}
