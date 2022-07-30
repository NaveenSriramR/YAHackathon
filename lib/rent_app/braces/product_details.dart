// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import 'braces_products.dart';
import 'single_product.dart';

class ProductDetails extends StatefulWidget {
  final String? productBrand;
  final String? productId;
  final String? productName;
  final String? productCost;
  final String? productCategory;
  final String? productColor;
  final String? productMaterial;
  final String? productImage;
  final String? productAvailability;
  final String? productLaunchDate;
  final String? productSummary;

  const ProductDetails(
      {Key? key,
      this.productId,
      this.productName,
      this.productCost,
      this.productCategory,
      this.productColor,
      this.productMaterial,
      this.productImage,
      this.productAvailability,
      this.productLaunchDate,
      this.productSummary,
      this.productBrand})
      : super(key: key);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  var monthOptions = [
    '1 week',
    '2 weeks',
    '4 weeks',
  ];
  final _formKey = GlobalKey<FormBuilderState>();
  int? _oneTimeBuyCost;
  double? _contractBuyCost;
  int? _week;
  int? quantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Text(
          widget.productName!,
          style: GoogleFonts.montserrat(color: Theme.of(context).primaryColor),
        ),
        backgroundColor: color,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            child: GridTile(
              child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.productImage!)),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productName!,
                    style: GoogleFonts.montserrat(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20,
                    ),
                  ),
                  title: Row(
                    children: [
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Rent at Rs." + _contractBuyCost.toString() + '/-',
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: Text(
                            'Buy Now @ Rs.' + widget.productCost! + "/-",
                            style: GoogleFonts.montserrat(
                              fontSize: 19,
                            ),
                          )),
                        ),
                      ],
                    ),
                    color: color,
                    textColor: Theme.of(context).primaryColor,
                    elevation: 1.0,
                    onPressed: () {
                      launchRazorPay();
                    },
                  ),
                  FormBuilder(
                    key: _formKey,
                    initialValue: const {
                      "week": "1 week",
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(9),
                            child: Card(
                              elevation: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11.0),
                                  child: Center(
                                    child: FormBuilderDropdown(
                                      name: 'week',
                                      decoration: InputDecoration(
                                        labelText: 'Choose Rent Duration',
                                        labelStyle: TextStyle(color: color),
                                        border: InputBorder.none,
                                      ),
                                      // initialValue: 'Male',
                                      allowClear: true,
                                      onChanged: (value) {
                                        if (value == '1 week') {
                                          setState(() {
                                            _week = 5;
                                            _contractBuyCost =
                                                (_oneTimeBuyCost! *
                                                    _week! /
                                                    100);
                                          });
                                        } else if (value == '2 weeks') {
                                          setState(() {
                                            _week = 10;
                                            _contractBuyCost =
                                                (_oneTimeBuyCost! *
                                                    _week! /
                                                    100);
                                          });
                                        } else if (value == '4 weeks') {
                                          setState(() {
                                            _week = 20;
                                            _contractBuyCost =
                                                (_oneTimeBuyCost! *
                                                    _week! /
                                                    100);
                                          });
                                        }
                                      },

                                      items: monthOptions
                                          .map((gender) => DropdownMenuItem(
                                                value: gender,
                                                child: Text(gender),
                                              ))
                                          .toList(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Quantity',
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: color),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: VxStepper(
                            onChange: (value) {
                              setState(() {
                                quantity = value;
                              });
                            },
                            defaultValue: 1,
                            min: 1,
                            max: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: Text(
                            'Rent Now',
                            style: GoogleFonts.montserrat(
                              fontSize: 19,
                            ),
                          )),
                        ),
                      ],
                    ),
                    color: color,
                    textColor: Theme.of(context).primaryColor,
                    elevation: 1.0,
                    onPressed: () {
                      launchRazorPay();
                      var user = FirebaseAuth.instance.currentUser;
                      FirebaseFirestore.instance
                          .collection(user!.uid + "_orders")
                          .add({
                        "id": widget.productId,
                        "cost": widget.productCost,
                        "name": widget.productName,
                        "category": widget.productCategory,
                        "color": widget.productColor,
                        "material": widget.productMaterial,
                        "image": widget.productImage,
                        "available": widget.productAvailability,
                        "username": "Kishore M",
                        "mobile": "6379659221",
                        "address": "XYZ",
                        "launchDate": widget.productLaunchDate,
                        "description": widget.productSummary,
                        "brand": widget.productBrand,
                        "timestamp": DateTime.now(),
                      }).then((response) {
                        // print(response.id);
                      });
                      FirebaseFirestore.instance
                          .collection("overall_cart")
                          .add({
                        "id": widget.productId,
                        "cost": widget.productCost,
                        "name": widget.productName,
                        "category": widget.productCategory,
                        "color": widget.productColor,
                        "material": widget.productMaterial,
                        "image": widget.productImage,
                        "available": widget.productAvailability,
                        "launchDate": widget.productLaunchDate,
                        "description": widget.productSummary,
                        "brand": widget.productBrand,
                        "username": "Kishore M",
                        "mobile": "6379659221",
                        "address": "XYZ",
                        "timestamp": DateTime.now(),
                      }).then((response) {
                        //print(response.id);
                      });
                    },
                  ),
                  const Divider(),
                  MaterialButton(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: Text(
                            'Add To Cart',
                            style: GoogleFonts.montserrat(
                              fontSize: 19,
                            ),
                          )),
                        ),
                      ],
                    ),
                    color: color,
                    textColor: Theme.of(context).primaryColor,
                    elevation: 1.0,
                    onPressed: () {
                      var user = FirebaseAuth.instance.currentUser;
                      FirebaseFirestore.instance
                          .collection(user!.uid + "_cart")
                          .add({
                        "id": widget.productId,
                        "cost": widget.productCost,
                        "name": widget.productName,
                        "category": widget.productCategory,
                        "color": widget.productColor,
                        "material": widget.productMaterial,
                        "image": widget.productImage,
                        "available": widget.productAvailability,
                        "launchDate": widget.productLaunchDate,
                        "description": widget.productSummary,
                        "brand": widget.productBrand,
                        "timestamp": DateTime.now(),
                      }).then((response) {
                        //print(response.id);
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Product Name',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: color),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.productName!,
                          style: GoogleFonts.montserrat(
                            color: Theme.of(context).secondaryHeaderColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Cost                       ',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: color),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Rs." + widget.productCost! + "/-",
                          style: GoogleFonts.montserrat(
                            color: Theme.of(context).secondaryHeaderColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Category          ',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: color),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "  " + widget.productCategory!,
                          style: GoogleFonts.montserrat(
                            color: Theme.of(context).secondaryHeaderColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Color                   ',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: color,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "  " + widget.productColor!,
                          style: GoogleFonts.montserrat(
                            color: Theme.of(context).secondaryHeaderColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Launch Date    ',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: color,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.productLaunchDate!,
                          style: GoogleFonts.montserrat(
                            color: Theme.of(context).secondaryHeaderColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Description   ',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: color,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 245,
                          // direction: Axis.vertical,
                          //fit : FlexFit.tight,
                          // fit : FlexFit.loose,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.productSummary!,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.montserrat(
                                color: Theme.of(context).secondaryHeaderColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Similar Products',
                      style: GoogleFonts.montserrat(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 360,
                    child: SimilarProducts(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    quantity = 1;
    _oneTimeBuyCost = int.parse(widget.productCost!) * quantity!;
    _week = 1;

    _contractBuyCost = (_oneTimeBuyCost! * _week! / 20).toDouble() * quantity!;
    super.initState();
    initaliseRazorPay();
  }

  Razorpay? _razorpay;

  void _handlePayment(PaymentSuccessResponse res) {}

  void initaliseRazorPay() {
    _razorpay = Razorpay();
    _razorpay!.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePayment);
    _razorpay!.on(Razorpay.EVENT_PAYMENT_ERROR, _handlepaymentError);
    _razorpay!.on(Razorpay.EVENT_PAYMENT_ERROR, _handleExternalWallet);
  }

  void _handlepaymentError(PaymentFailureResponse res) {}
  void _handleExternalWallet(ExternalWalletResponse res) {}
  void launchRazorPay() {
    User? user = FirebaseAuth.instance.currentUser;
    var options = {
      "key": "rzp_live_eULnQWUHUQXgbx",
      "amount": "100",
      "name": user!.displayName.toString(),
      "description": "Purchase from ${user.displayName.toString()}"
    };
    try {
      _razorpay!.open(options);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}

class SimilarProducts extends StatefulWidget {
  const SimilarProducts({Key? key}) : super(key: key);

  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var productList = [
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "199",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "199",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "199",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "199",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "199",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "199",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "199",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "199",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productBrand: productList[index]['productBrand'],
            productName: productList[index]['productName'],
            productId: productList[index]['productId'],
            productCost: productList[index]['productCost'],
            productCategory: productList[index]['productCategory'],
            productColor: productList[index]['productColor'],
            productMaterial: productList[index]['productMaterial'],
            productImage: productList[index]['productImage'],
            productAvailability: productList[index]['productAvailability'],
            productLaunchDate: productList[index]['productLaunchDate'],
            productSummary: productList[index]['productSummary'],
          );
        });
  }
}
