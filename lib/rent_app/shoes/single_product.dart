import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'product_details.dart';
import 'shoes_products.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss1",
      "cost": "300",
      "color": "black",
      "material": "leather",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://i.pinimg.com/originals/e4/81/29/e481297d878719bfdaff6d25e076f4b7.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss2",
      "cost": "160",
      "color": "brown",
      "material": "leather",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://5.imimg.com/data5/NN/QA/CC/SELLER-63951507/mens-formal-shoe-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss3",
      "cost": "150",
      "color": "white",
      "material": "leather",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1632340859-202102_ND_1000Fell_white_02_r_3_2048x.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes women All purpose High Quality",
      "id": "ss4",
      "cost": "500",
      "color": "black",
      "material": "leather",
      "description": "High Quality women's shoe with good fit and best design",
      "imageUrl":
          "https://asset1.cxnmarksandspencer.com/is/image/mands/SD_01_T02_0298_Y0_X_EC_0",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes women All purpose High Quality",
      "id": "ss5",
      "cost": "300",
      "color": "red",
      "material": "leather",
      "description": "High Quality women's shoe with good fit and best design",
      "imageUrl": "https://www.pinkvilla.com/files/3_1904.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss6",
      "cost": "200",
      "color": "black",
      "material": "canvas",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://5.imimg.com/data5/RH/QQ/MY-47778952/black-canvas-shoes-for-men-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss7",
      "cost": "400",
      "color": "brown",
      "material": "canvas",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://5.imimg.com/data5/UG/KP/IY/SELLER-39529548/men-canvas-shoes-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss8",
      "cost": "300",
      "color": "white",
      "material": "canvas",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://rukminim1.flixcart.com/image/332/398/ktuewsw0/shoe/v/r/v/8-8547-robbie-jones-white-original-imag73paqcugwrws.jpeg?q=50",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes women All purpose High Quality",
      "id": "ss9",
      "cost": "200",
      "color": "black",
      "material": "canvas",
      "description": "High Quality women's shoe with good fit and best design",
      "imageUrl":
          "https://5.imimg.com/data5/KA/EQ/NP/SELLER-2784282/img-2557-500x500.JPG",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes women All purpose High Quality",
      "id": "ss10",
      "cost": "150",
      "color": "red",
      "material": "canvas",
      "description": "High Quality women's shoe with good fit and best design",
      "imageUrl":
          "https://m.media-amazon.com/images/I/51-t-VfznFL._AC_UL320_.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss11",
      "cost": "250",
      "color": "black",
      "material": "leather",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://i.pinimg.com/originals/e4/81/29/e481297d878719bfdaff6d25e076f4b7.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss12",
      "cost": "400",
      "color": "brown",
      "material": "leather",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://5.imimg.com/data5/NN/QA/CC/SELLER-63951507/mens-formal-shoe-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss13",
      "cost": "200",
      "color": "white",
      "material": "leather",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1632340859-202102_ND_1000Fell_white_02_r_3_2048x.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes women All purpose High Quality",
      "id": "ss14",
      "cost": "300",
      "color": "black",
      "material": "leather",
      "description": "High Quality women's shoe with good fit and best design",
      "imageUrl":
          "https://asset1.cxnmarksandspencer.com/is/image/mands/SD_01_T02_0298_Y0_X_EC_0",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes women All purpose High Quality",
      "id": "ss15",
      "cost": "400",
      "color": "red",
      "material": "leather",
      "description": "High Quality women's shoe with good fit and best design",
      "imageUrl": "https://www.pinkvilla.com/files/3_1904.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss16",
      "cost": "300",
      "color": "black",
      "material": "canvas",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://5.imimg.com/data5/RH/QQ/MY-47778952/black-canvas-shoes-for-men-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss17",
      "cost": "250",
      "color": "brown",
      "material": "canvas",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://5.imimg.com/data5/UG/KP/IY/SELLER-39529548/men-canvas-shoes-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes men All purpose High Quality",
      "id": "ss18",
      "cost": "200",
      "color": "white",
      "material": "canvas",
      "description": "High Quality men's shoe with good fit and best design",
      "imageUrl":
          "https://rukminim1.flixcart.com/image/332/398/ktuewsw0/shoe/v/r/v/8-8547-robbie-jones-white-original-imag73paqcugwrws.jpeg?q=50",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes women All purpose High Quality",
      "id": "ss19",
      "cost": "300",
      "color": "black",
      "material": "canvas",
      "description": "High Quality women's shoe with good fit and best design",
      "imageUrl":
          "https://5.imimg.com/data5/KA/EQ/NP/SELLER-2784282/img-2557-500x500.JPG",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    },
    {
      "name": "Shoes women All purpose High Quality",
      "id": "ss20",
      "cost": "400",
      "color": "red",
      "material": "canvas",
      "description": "High Quality women's shoe with good fit and best design",
      "imageUrl":
          "https://m.media-amazon.com/images/I/51-t-VfznFL._AC_UL320_.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=SQazl-HSYAE"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: ScrollPhysics(),
          itemCount: productList.length,
          itemBuilder: (BuildContext context, int index) {
            return SingleProduct(
              productName: productList[index]['name']! == null
                  ? "A"
                  : productList[index]['name']!,
              productId: productList[index]['id']! == null
                  ? "A"
                  : productList[index]['id']!,
              productCost: productList[index]['cost']! == null
                  ? "A"
                  : productList[index]['cost']!,
              productColor: productList[index]['color']! == null
                  ? "A"
                  : productList[index]['color']!,
              productMaterial: productList[index]['material']! == null
                  ? "A"
                  : productList[index]['material']!,
              productImageUrl: productList[index]['imageUrl']! == null
                  ? "A"
                  : productList[index]['imageUrl']!,
              productYoutubeUrl: productList[index]['youtubeLink']! == null
                  ? "A"
                  : productList[index]['youtubeLink']!,
              productDescription: productList[index]['description']! == null
                  ? "A"
                  : productList[index]['description']!,
            );
          }),
    );
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
    Size? size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withAlpha(10),
                blurRadius: 1,
                spreadRadius: 5),
          ],
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductDetails(
                          productId: widget.productId,
                          productName: widget.productName,
                          productCost: widget.productCost,
                          productDescription: widget.productDescription,
                          productColor: widget.productColor,
                          productMaterial: widget.productMaterial,
                          productImageUrl: widget.productImageUrl,
                          productYoutubeUrl: widget.productYoutubeUrl,
                        )));
          },
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: size.height * 0.15,
                    width: size.width * 0.35,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CachedNetworkImage(
                          imageUrl: widget.productImageUrl!,
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * 0.46,
                        child: Text(
                          widget.productName!,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Rs." + widget.productCost! + "/-",
                          style: GoogleFonts.montserrat(
                            color: color,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
