import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fancy_dress_products.dart';
import 'product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "women Pants Black Formals Standard",
      "id": "pm1",
      "cost": "300",
      "color": "black",
      "material": "cotton",
      "description": "High Quality womens black pants with good fit",
      "imageUrl":
          "https://5.imimg.com/data5/RV/PC/MY-25336801/women-s-black-pant-500x500.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants White Formals Standard",
      "id": "pm2",
      "cost": "200",
      "color": "white",
      "material": "cotton",
      "description": "High Quality womens white pants with good fit",
      "imageUrl":
          "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2021_29/1752515/screen_shot_2021-07-23_at_9-54-33_am.png",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Blue Formals Standard",
      "id": "pm3",
      "cost": "400",
      "color": "blue",
      "material": "cotton",
      "description": "High Quality womens blue pants with good fit",
      "imageUrl":
          "https://hips.hearstapps.com/rbk.h-cdn.co/assets/cm/14/50/1600x2336/548b581cb312c_-_rbk-blue-pants-0713-1-s2.jpg?resize=480:*",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Grey Formals Standard",
      "id": "pm4",
      "cost": "300",
      "color": "grey",
      "material": "cotton",
      "description": "High Quality womens grey pants with good fit",
      "imageUrl":
          "https://cdn.lookastic.com/grey-dress-pants-original-1523607.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Brown Formals Standard",
      "id": "pm5",
      "cost": "200",
      "color": "brown",
      "material": "cotton",
      "description": "High Quality womens brown pants with good fit",
      "imageUrl":
          "https://assets.ajio.com/medias/sys_master/root/20210702/f9cl/60de2574f997ddb31217b574/-1117Wx1400H-461368784-brown-MODEL.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Black Jeans Standard",
      "id": "pm6",
      "cost": "400",
      "color": "black",
      "material": "denim",
      "description": "High Quality womens black jeans with good fit",
      "imageUrl":
          "https://assets.vogue.com/photos/6101a8cb418b83726c8fd694/master/w_320%2Cc_limit/slide_19.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants White Jeans Standard",
      "id": "pm7",
      "cost": "300",
      "color": "white",
      "material": "denim",
      "description": "High Quality womens white jeans with good fit",
      "imageUrl":
          "https://assets.vogue.com/photos/62bf2c1485a5c8c95d829c5a/1:1/w_2667,h_2667,c_limit/slide_16.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Blue Jeans Standard",
      "id": "pm8",
      "cost": "200",
      "color": "blue",
      "material": "denim",
      "description": "High Quality womens blue jeans with good fit",
      "imageUrl":
          "https://image.made-in-china.com/202f0j00GFwQfiAagsgY/OEM-Brand-Light-Blue-Damaged-Distressed-Skinny-Denim-Jeans-Women.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Grey Jeans Standard",
      "id": "pm9",
      "cost": "400",
      "color": "grey",
      "material": "denim",
      "description": "High Quality womens grey jeans with good fit",
      "imageUrl":
          "https://vanheusenindia.imgix.net/img/app/product/3/350486-1721879-large.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Brown Jeans Standard",
      "id": "pm10",
      "cost": "300",
      "color": "brown",
      "material": "denim",
      "description": "High Quality womens brown jeans with good fit",
      "imageUrl":
          "https://5.imimg.com/data5/WW/FH/MY-68238041/ladies-dark-brown-jeans-500x500.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Black Formals Standard",
      "id": "pm11",
      "cost": "200",
      "color": "black",
      "material": "cotton",
      "description": "High Quality womens black pants with good fit",
      "imageUrl":
          "https://5.imimg.com/data5/RV/PC/MY-25336801/women-s-black-pant-500x500.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants White Formals Standard",
      "id": "pm12",
      "cost": "400",
      "color": "white",
      "material": "cotton",
      "description": "High Quality womens white pants with good fit",
      "imageUrl":
          "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2021_29/1752515/screen_shot_2021-07-23_at_9-54-33_am.png",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Blue Formals Standard",
      "id": "pm13",
      "cost": "300",
      "color": "blue",
      "material": "cotton",
      "description": "High Quality womens blue pants with good fit",
      "imageUrl":
          "https://hips.hearstapps.com/rbk.h-cdn.co/assets/cm/14/50/1600x2336/548b581cb312c_-_rbk-blue-pants-0713-1-s2.jpg?resize=480:*",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Grey Formals Standard",
      "id": "pm14",
      "cost": "200",
      "color": "grey",
      "material": "cotton",
      "description": "High Quality womens grey pants with good fit",
      "imageUrl":
          "https://cdn.lookastic.com/grey-dress-pants-original-1523607.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Brown Formals Standard",
      "id": "pm15",
      "cost": "400",
      "color": "brown",
      "material": "cotton",
      "description": "High Quality womens brown pants with good fit",
      "imageUrl":
          "https://assets.ajio.com/medias/sys_master/root/20210702/f9cl/60de2574f997ddb31217b574/-1117Wx1400H-461368784-brown-MODEL.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Black Jeans Standard",
      "id": "pm16",
      "cost": "300",
      "color": "black",
      "material": "denim",
      "description": "High Quality womens black jeans with good fit",
      "imageUrl":
          "https://assets.vogue.com/photos/6101a8cb418b83726c8fd694/master/w_320%2Cc_limit/slide_19.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants White Jeans Standard",
      "id": "pm17",
      "cost": "200",
      "color": "white",
      "material": "denim",
      "description": "High Quality womens white jeans with good fit",
      "imageUrl":
          "https://assets.vogue.com/photos/62bf2c1485a5c8c95d829c5a/1:1/w_2667,h_2667,c_limit/slide_16.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Blue Jeans Standard",
      "id": "pm18",
      "cost": "400",
      "color": "blue",
      "material": "denim",
      "description": "High Quality womens blue jeans with good fit",
      "imageUrl":
          "https://image.made-in-china.com/202f0j00GFwQfiAagsgY/OEM-Brand-Light-Blue-Damaged-Distressed-Skinny-Denim-Jeans-Women.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Grey Jeans Standard",
      "id": "pm19",
      "cost": "300",
      "color": "grey",
      "material": "denim",
      "description": "High Quality womens grey jeans with good fit",
      "imageUrl":
          "https://vanheusenindia.imgix.net/img/app/product/3/350486-1721879-large.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
    },
    {
      "name": "women Pants Brown Jeans Standard",
      "id": "pm20",
      "cost": "200",
      "color": "brown",
      "material": "denim",
      "description": "High Quality womens brown jeans with good fit",
      "imageUrl":
          "https://5.imimg.com/data5/WW/FH/MY-68238041/ladies-dark-brown-jeans-500x500.jpg",
      "youtubeLink": "https://youtube.com/watch?v=f8-tfc65_tg"
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
