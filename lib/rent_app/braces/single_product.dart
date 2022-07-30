import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'braces_products.dart';
import 'product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productName: productList[index]['name']!,
            productId: productList[index]['id']!,
            productCost: productList[index]['cost']!,
            productColor: productList[index]['color']!,
            productMaterial: productList[index]['material']!,
            productImageUrl: productList[index]['imageUrl']!,
            productYoutubeUrl: productList[index]['youtubeUrl']!,
            productDescription: productList[index]['description']!,
          );
        });
  }
}

class SingleProduct extends StatefulWidget {
  final String? productId;
  final String? productName;
  final String? productCost;
  final String? productColor;
  final String? productMaterial;
  final String? productYoutubeUrl;
  final String? productImageUrl;
  final String? productDescription;

  const SingleProduct(
      {Key? key,
      this.productId,
      this.productName,
      this.productCost,
      this.productColor,
      this.productMaterial,
      this.productImageUrl,
      this.productYoutubeUrl,
      this.productDescription})
      : super(key: key);

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
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
                        builder: (BuildContext context) => ProductDetails(
                              productYoutubeUrl: widget.productYoutubeUrl,
                              productId: widget.productId,
                              productName: widget.productName,
                              productCost: widget.productCost,
                              productDescription: widget.productDescription,
                              productMaterial: widget.productMaterial,
                              productImageUrl: widget.productImageUrl,
                              productColor: widget.productColor,
                            )));
              },
              child: GridTile(
                footer: Container(
                  color: Colors.white.withAlpha(100),
                  child: ListTile(
                    title: Text(
                      widget.productName!,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Rs." + widget.productCost! + "/-",
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                child: Image.network(
                  widget.productImageUrl!,
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
