import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'single_product.dart';

Color? color = const Color(0xFFff9900);

class Braces extends StatefulWidget {
  const Braces({Key? key}) : super(key: key);

  @override
  _BracesState createState() => _BracesState();
}

class _BracesState extends State<Braces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: color),
          title: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Shirts To Explore',
                    style: GoogleFonts.montserrat(color: color),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Container(
            color: Theme.of(context).primaryColor, child: const Products()));
  }

  productCarousel(BuildContext context) {
    return Column(
      children: [Container()],
    );
  }
}
