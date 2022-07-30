// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../video_consultation/app_colors.dart';

class OrderProductDetails extends StatefulWidget {
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

  const OrderProductDetails(
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
  _OrderProductDetailsState createState() => _OrderProductDetailsState();
}

class _OrderProductDetailsState extends State<OrderProductDetails> {
  var monthOptions = [
    '1 week',
    '2 weeks',
    '4 weeks',
  ];
  int? _oneTimeBuyCost;
  double? _contractBuyCost;
  int? _week;

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
                          widget.productCost!,
                          style: TextStyle(
                            color: color,
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
                  MaterialButton(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: Text(
                            'Track your Order',
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
                  MaterialButton(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: Text(
                            'Cancel Order',
                            style: GoogleFonts.montserrat(
                              fontSize: 19,
                            ),
                          )),
                        ),
                      ],
                    ),
                    color: Colors.red,
                    textColor: Theme.of(context).primaryColor,
                    elevation: 1.0,
                    onPressed: () {
                      launchRazorPay();
                    },
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
    _oneTimeBuyCost = int.parse(widget.productCost!);
    _week = 1;
    _contractBuyCost = (_oneTimeBuyCost! * _week! / 100).toDouble();
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
