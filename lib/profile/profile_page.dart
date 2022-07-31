import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rec_hackoverflow/cart_page/cart_page_home.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/profile_bg.png"),
                  fit: BoxFit.cover),
            ),
            child: Center(
                child: Column(children: [
              SizedBox(
                height: 150,
              ),
              Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: user!.photoURL!.toString(),
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  )),
              Row(children: [
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: const Icon(FontAwesomeIcons.userTie,
                        color: Color(0xffff9900))),
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 50),
                    child: Text(
                      user!.displayName!,
                      style: GoogleFonts.montserrat(
                          fontSize: 25,
                          color: Theme.of(context).secondaryHeaderColor),
                    ))
              ]),
              Container(
                  child: Row(children: [
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: const Icon(FontAwesomeIcons.envelope,
                        color: Color(0xffff9900))),
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 50),
                    child: Text(
                      user!.email!,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(
                          fontSize: 25,
                          color: Theme.of(context).secondaryHeaderColor),
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
                    child: Text(
                      user!.phoneNumber!,
                      style: GoogleFonts.montserrat(
                          fontSize: 25,
                          color: Theme.of(context).secondaryHeaderColor),
                    ))
              ])),
              Container(
                  child: Row(children: [
                Container(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: const Icon(FontAwesomeIcons.cartArrowDown,
                        color: Color(0xffff9900))),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  child: Container(
                      padding: const EdgeInsets.only(top: 40, left: 50),
                      child: Text(
                        "Cart",
                        style: GoogleFonts.montserrat(
                            fontSize: 25,
                            color: Theme.of(context).secondaryHeaderColor),
                      )),
                )
              ]))
            ]))));
  }
}
