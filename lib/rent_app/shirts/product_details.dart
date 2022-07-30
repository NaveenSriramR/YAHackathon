// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import 'braces_products.dart';

class ProductDetails extends StatefulWidget {
  final String? productId;
  final String? productName;
  final String? productCost;
  final String? productColor;
  final String? productMaterial;
  final String? productImageUrl;
  final String? productYoutubeUrl;

  final String? productDescription;

  const ProductDetails({
    Key? key,
    this.productId,
    this.productName,
    this.productCost,
    this.productDescription,
    this.productColor,
    this.productMaterial,
    this.productImageUrl,
    this.productYoutubeUrl,
  }) : super(key: key);
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
                  child: Image.network(widget.productImageUrl!)),
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

                      FirebaseFirestore.instance
                          .collection("overall_cart")
                          .add({
                        "id": widget.productId,
                        "cost": widget.productCost,
                        "name": widget.productName,
                        "color": widget.productColor,
                        "material": widget.productMaterial,
                        "imageUrl": widget.productImageUrl,
                        "youtubeUrl": widget.productYoutubeUrl,
                        "username": "Kishore M",
                        "mobile": "6379659221",
                        "address": "XYZ",
                        "description": widget.productDescription,
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
                        "color": widget.productColor,
                        "material": widget.productMaterial,
                        "imageUrl": widget.productImageUrl,
                        "youtubeUrl": widget.productYoutubeUrl,
                        "username": "Kishore M",
                        "mobile": "6379659221",
                        "address": "XYZ",
                        "description": widget.productDescription,
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
                          'Description   ',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: color,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
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

  void _handlePayment(PaymentSuccessResponse res) {
    var user = FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance.collection(user!.uid + "_orders").add({
      "id": widget.productId,
      "cost": widget.productCost,
      "name": widget.productName,
      "color": widget.productColor,
      "material": widget.productMaterial,
      "imageUrl": widget.productImageUrl,
      "youtubeUrl": widget.productYoutubeUrl,
      "username": "Kishore M",
      "mobile": "6379659221",
      "address": "XYZ",
      "description": widget.productDescription,
      "timestamp": DateTime.now(),
    }).then((response) {
      // print(response.id);
    });
  }

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
