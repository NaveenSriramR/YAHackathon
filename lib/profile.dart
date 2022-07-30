import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  padding: const EdgeInsets.only(top: 175, left: 0),
                  child: Image.asset('assets/images/avatar.png',
                      width: 150, height: 150)),
              Container(
                  child: Row(children: [
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: const Icon(FontAwesomeIcons.userTie,
                        color: Color(0xffff9900))),
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 50),
                    child: const Text(
                      "Kumaresh",
                      style: TextStyle(fontSize: 25),
                    ))
              ])),
              Container(
                  child: Row(children: [
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: const Icon(FontAwesomeIcons.envelope,
                        color: Color(0xffff9900))),
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 50),
                    child: const Text(
                      "abc@gmail.com",
                      style: TextStyle(fontSize: 25),
                    ))
              ])),
              Container(
                  child: Row(children: [
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: const Icon(FontAwesomeIcons.mobile,
                        color: Color(0xffff9900))),
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 50),
                    child: const Text(
                      "11111111",
                      style: TextStyle(fontSize: 25),
                    ))
              ])),
              Container(
                  child: Row(children: [
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: const Icon(FontAwesomeIcons.cartArrowDown,
                        color: Color(0xffff9900))),
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 50),
                    child: const Text(
                      "Cart",
                      style: TextStyle(fontSize: 25),
                    ))
              ]))
            ]))));
  }
}
