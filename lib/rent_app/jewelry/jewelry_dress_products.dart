import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'single_product.dart';

Color? color = const Color(0xFFff9900);

class Jewelry extends StatefulWidget {
  const Jewelry({Key? key}) : super(key: key);

  @override
  _JewelryState createState() => _JewelryState();
}

class _JewelryState extends State<Jewelry> {
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
                    'Jewelry To Explore',
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
      children: [
        Container()
        // Container(
        //   color: Colors.white,
        //   height: 230.0,
        //   child: CarouselSlider.builder(
        //     itemCount: braceCarousel.length,
        //     options: CarouselOptions(
        //       pageSnapping: true,
        //       height: 200,
        //       enlargeCenterPage: true,
        //       autoPlay: true,
        //       aspectRatio: 16 / 9,
        //       autoPlayCurve: Curves.fastOutSlowIn,
        //       enableInfiniteScroll: true,
        //       autoPlayAnimationDuration: const Duration(milliseconds: 2000),
        //       viewportFraction: 0.8,
        //     ),
        //     itemBuilder: (BuildContext context, int index, int realIndex) {
        //       return GestureDetector(
        //         onTap: () {},
        //         child: Container(
        //           margin: const EdgeInsets.all(5.0),
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10.0),
        //               boxShadow: [
        //                 BoxShadow(
        //                   color: Colors.black.withAlpha(100),
        //                   blurRadius: 10,
        //                 ),
        //               ],
        //               image: DecorationImage(
        //                 image: AssetImage(
        //                   braceCarousel[index],
        //                 ),
        //                 fit: BoxFit.cover,
        //               )),
        //         ),
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}
