import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'cart_page/cart_page_home.dart';
import 'google_login_configs_provider/google_sign_in_configs_app.dart';
import 'rent_app/scroll_categories.dart';
import 'rent_app/shirts/product_details.dart';
import 'your_orders/order_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Widget> jewelryProducts = [
      singleProductScroll(
        size,
        'https://5.imimg.com/data5/AE/AG/MY-40208357/men-gold-ring-500x500.jpeg',
        'Men Gold-Ring jewellery',
        '50000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://m.media-amazon.com/images/I/51sbLwDS98L._UL1500_.jpg',
        'Men Gold-Bracelet jewellery',
        '15000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://5.imimg.com/data5/AE/AG/MY-40208357/men-gold-ring-500x500.jpeg',
        'Men Gold-Ring jewellery',
        '50000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://4.imimg.com/data4/WM/XG/MY-1864875/men-s-antique-silver-bracelet-500x500.jpg',
        'Men Gold-Bracelet jewellery',
        '15000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
    ];
    List<Widget> shoeProducts = [
      singleProductScroll(
        size,
        'https://5.imimg.com/data5/UG/KP/IY/SELLER-39529548/men-canvas-shoes-500x500.jpg',
        'Shoes women All purpose High Quality',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://m.media-amazon.com/images/I/51-t-VfznFL._AC_UL320_.jpg',
        'Shoes women All purpose High Quality',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://m.media-amazon.com/images/I/51-t-VfznFL._AC_UL320_.jpg',
        'Shoes women All purpose High Quality',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://rukminim1.flixcart.com/image/332/398/ktuewsw0/shoe/v/r/v/8-8547-robbie-jones-white-original-imag73paqcugwrws.jpeg?q=50',
        'Shoes women All purpose High Quality',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://5.imimg.com/data5/KA/EQ/NP/SELLER-2784282/img-2557-500x500.JPG',
        'Shoes women All purpose High Quality',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
    ];
    List<Widget> rentProducts = [
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/00709_00.jpg?alt=media',
        'White Dress',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/00709_00.jpg?alt=media',
        'White Dress',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/00709_00.jpg?alt=media',
        'White Dress',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/00709_00.jpg?alt=media',
        'White Dress',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/00709_00.jpg?alt=media',
        'White Dress',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
    ];

    List<Widget> shirtProducts = [
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/00709_00.jpg?alt=media',
        'White Dress',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/00709_00.jpg?alt=media',
        'White Dress',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/00709_00.jpg?alt=media',
        'White Dress',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/00709_00.jpg?alt=media',
        'White Dress',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/00709_00.jpg?alt=media',
        'White Dress',
        '500',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'White',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
      singleProductScroll(
        size,
        'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/01967_00.jpg?alt=media',
        'Black T-Shirt',
        '1000',
        'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
        'Black',
      ),
    ];

    Color? color = const Color(0xFFff9900);
    User? user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: color),
        title: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/try.png'),
                ),
                const SizedBox(width: 10),
                Text(
                  'Try-Onn',
                  style: GoogleFonts.montserrat(color: color),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.logout, color: color),
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: color,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: ClipOval(
                        child: CachedNetworkImage(
                      imageUrl: user!.photoURL!.toString(),
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    )),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Center(
                              child: Text(
                                user.displayName.toString(),
                                textAlign: TextAlign.start,
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.74,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage()));
                    },
                    child: ListTile(
                      title: Text(
                        'Your Cart',
                        style: GoogleFonts.montserrat(
                          color: color,
                        ),
                      ),
                      leading: Icon(Icons.shopping_bag, color: color),
                      trailing: Icon(Icons.arrow_right, color: color, size: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Divider(
                      color: color,
                      thickness: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OrderPage()));
                    },
                    child: ListTile(
                      title: Text(
                        'Your Orders',
                        style: GoogleFonts.montserrat(
                          color: color,
                        ),
                      ),
                      leading:
                          Icon(Icons.add_shopping_cart_outlined, color: color),
                      trailing: Icon(Icons.arrow_right, color: color, size: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Divider(
                      color: color,
                      thickness: 1,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 30,
            color: Theme.of(context).primaryColor,
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Shop By Category',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: color,
              ),
            ),
          ),
          const ScrollableCategories(),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Top deals',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: color,
              ),
            ),
          ),
          Container(
            width: size.width,
            color: Theme.of(context).primaryColor,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: rentProducts.length,
                itemBuilder: (context, index) {
                  return rentProducts[index];
                },
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Top shirts',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: color,
              ),
            ),
          ),
          Container(
            width: size.width,
            color: Theme.of(context).primaryColor,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: shirtProducts.length,
                itemBuilder: (context, index) {
                  return shirtProducts[index];
                },
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Top shoes',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: color,
              ),
            ),
          ),
          Container(
            width: size.width,
            color: Theme.of(context).primaryColor,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: shoeProducts.length,
                itemBuilder: (context, index) {
                  return shoeProducts[index];
                },
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Top Jewelry',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: color,
              ),
            ),
          ),
          Container(
            width: size.width,
            color: Theme.of(context).primaryColor,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: jewelryProducts.length,
                itemBuilder: (context, index) {
                  return jewelryProducts[index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  customDivider(String title) {
    Color? color = const Color(0xFFff9900);
    return Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: color,
              height: 10,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: color,
              ),
              borderRadius: BorderRadius.circular(13),
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: color,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: color,
              height: 10,
            ),
          ),
        ],
      ),
    );
  }

  List topImageCarousel = [
    "assets/news1.jpg",
    "assets/news2.jpg",
    "assets/news3.jpg",
    "assets/news4.jpg",
    "assets/news5.jpg",
  ];

  // ignore: non_constant_identifier_names
  Product_Carousel(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme.of(context).primaryColor,
          height: 230.0,
          child: CarouselSlider.builder(
            itemCount: topImageCarousel.length,
            options: CarouselOptions(
              pageSnapping: true,
              height: 200,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 2000),
              viewportFraction: 0.8,
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SafeArea(
                                child: SizedBox.fromSize(
                                  child: const WebView(
                                    initialUrl:
                                        "https://www.hindustantimes.com/india-news/india-crosses-landmark-of-900-million-covid-vaccinations-says-health-minister-101633163053518.html",
                                    javascriptMode: JavascriptMode.unrestricted,
                                  ),
                                ),
                              )));
                },
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(
                          topImageCarousel[index],
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  _launchURL(String place) async {
    var url = place;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget singleRentScroll(
      Size size, String title, String navigate, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          _launchURL(navigate);
        },
        child: Container(
          height: 250,
          width: 180,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  offset: const Offset(0, 25),
                  blurRadius: 25,
                  spreadRadius: -10)
            ],
            // border: Border.all(color: Theme.of(context).secondaryHeaderColor),
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/workout.jpg"),
                    ),
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8.0),
                child: Text(
                  title,
                  style: GoogleFonts.nunito(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 100, bottom: 8),
                child: Divider(
                  color: Colors.blueGrey,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.nunito(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: "WorkOut",
                          style: GoogleFonts.nunito(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleProductScroll(Size size, String? image, String name, String cost,
      String description, String color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProductDetails(
                        productId: "1",
                        productName: name,
                        productCost: cost,
                        productMaterial: "Fuchsia",
                        productImageUrl: image,
                        productYoutubeUrl: image,
                        productColor: color,
                        productDescription: description,
                      )));
        },
        child: Container(
          width: 180,
          height: 270,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  offset: const Offset(0, 25),
                  blurRadius: 25,
                  spreadRadius: -10)
            ],
            // border: Border.all(color: Theme.of(context).secondaryHeaderColor),
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 188,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(image!),
                    ),
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8.0),
                child: Text(
                  name,
                  style: GoogleFonts.nunito(
                    color: const Color(0xFFff9900),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 100, bottom: 8),
                child: Divider(
                  color: Colors.blueGrey,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.nunito(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Rs." + cost + "/-",
                          style: GoogleFonts.nunito(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleCategory(Size size, String image, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).secondaryHeaderColor,
                  blurRadius: 0.1),
            ],
            color: Theme.of(context).primaryColor,
            // border: Border.all(
            //   color: Theme.of(context).secondaryHeaderColor,
            // ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          width: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child:
                    Image.asset("assets/location.jpg", width: 100, height: 50),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 5, right: 5),
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.mukta(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
