import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../video_consultation/app_colors.dart';
import 'cart_product_details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CartProducts extends StatefulWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productList = [];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SingleCartProduct(
            productName: productList[index]['name']!,
            productId: productList[index]['id']!,
            productCost: productList[index]['cost']!,
            productColor: productList[index]['color']!,
            productMaterial: productList[index]['material']!,
            productImageUrl: productList[index]['imageUrl']!,
            productYoutubeUrl: productList[index]['youtubeLink']!,
            productDescription: productList[index]['description']!,
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final String? productId;
  final String? productName;
  final String? productCost;

  final String? productColor;
  final String? productMaterial;
  final String? productImageUrl;
  final String? productYoutubeUrl;
  final String? productDescription;
  final QuerySnapshot? snapshot;
  final int? index;

  const SingleCartProduct({
    Key? key,
    this.productId,
    this.index,
    this.snapshot,
    this.productName,
    this.productCost,
    this.productColor,
    this.productMaterial,
    this.productImageUrl,
    this.productYoutubeUrl,
    this.productDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(10),
              blurRadius: 1,
            ),
          ],
        ),
        child: Card(
          child: Material(
            child: InkWell(
              onTap: () {
                // Passing the values to the product details page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => CartProductDetails(
                              snapshot: snapshot,
                              index: index,
                              productId: productId,
                              productName: productName,
                              productCost: productCost,
                              productMaterial: productMaterial,
                              productImageUrl: productImageUrl,
                              productYoutubeUrl: productYoutubeUrl,
                              productColor: productColor,
                              productDescription: productDescription,
                            )));
              },
              child: GridTile(
                footer: Container(
                  color: Colors.white.withAlpha(100),
                  child: ListTile(
                    title: Text(
                      productName!,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      productCost!,
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                child: Image.network(
                  productImageUrl!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
