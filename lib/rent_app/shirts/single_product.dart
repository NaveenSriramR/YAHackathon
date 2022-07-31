import 'package:cached_network_image/cached_network_image.dart';
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
  var productList = [
    {
      "name": "Male Shirt Full hand",
      "id": "sm1",
      "cost": "400",
      "color": "red",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcQ82d1PJ7ZhX6XvGRkFJnNXnYrTs_1j72iQ&usqp=CAU",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male Shirt  Full Hand",
      "id": "sm2",
      "cost": "500",
      "color": "blue",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://n2.sdlcdn.com/imgs/k/i/6/X-men-Blue-Cotton-Regular-SDL877802698-1-52b06.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male Shirt Full Hand",
      "id": "sm3",
      "cost": "400",
      "color": "green",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/ZP/RG/VO/SELLER-14071010/unicolr-formal-green-shirt-500x500.jpeg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male Shirt  Full Hand",
      "id": "sm4",
      "cost": "500",
      "color": "black",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/UC/IS/MY-7837511/mens-black-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male Shirt  Full Hand",
      "id": "sm5",
      "cost": "300",
      "color": "brown",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://modone.com/eng_pl_Mens-shirt-with-long-sleeves-K512-light-brown-14345_1.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male t-Shirt Full hand",
      "id": "sm6",
      "cost": "400",
      "color": "red",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/XP/PH/MY-57047128/round-neck-t-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male t-Shirt  Full Hand",
      "id": "sm7",
      "cost": "500",
      "color": "blue",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/XQ/IH/MY-29746767/t-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male t-Shirt Full Hand",
      "id": "sm8",
      "cost": "400",
      "color": "green",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/UX/KF/MY-23375112/full-sleeve-printed-t-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male t-Shirt  Full Hand",
      "id": "sm9",
      "cost": "500",
      "color": "black",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/HB/VQ/MY-44811379/men-black-plain-t-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male t-Shirt  Full Hand",
      "id": "sm10",
      "cost": "300",
      "color": "brown",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/SELLER/Default/2020/12/NK/UO/VL/106359187/brown-men-polo-collar-t-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male Shirt Full hand",
      "id": "sm11",
      "cost": "400",
      "color": "red",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcQ82d1PJ7ZhX6XvGRkFJnNXnYrTs_1j72iQ&usqp=CAU",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male Shirt  Full Hand",
      "id": "sm12",
      "cost": "500",
      "color": "blue",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://n2.sdlcdn.com/imgs/k/i/6/X-men-Blue-Cotton-Regular-SDL877802698-1-52b06.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male Shirt Full Hand",
      "id": "sm13",
      "cost": "400",
      "color": "green",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/ZP/RG/VO/SELLER-14071010/unicolr-formal-green-shirt-500x500.jpeg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male Shirt  Full Hand",
      "id": "sm14",
      "cost": "500",
      "color": "black",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/UC/IS/MY-7837511/mens-black-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male Shirt  Full Hand",
      "id": "sm15",
      "cost": "300",
      "color": "brown",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://modone.com/eng_pl_Mens-shirt-with-long-sleeves-K512-light-brown-14345_1.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male t-Shirt Full hand",
      "id": "sm16",
      "cost": "400",
      "color": "red",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/XP/PH/MY-57047128/round-neck-t-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male t-Shirt  Full Hand",
      "id": "sm17",
      "cost": "500",
      "color": "blue",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/XQ/IH/MY-29746767/t-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male t-Shirt Full Hand",
      "id": "sm18",
      "cost": "400",
      "color": "green",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/UX/KF/MY-23375112/full-sleeve-printed-t-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male t-Shirt  Full Hand",
      "id": "sm19",
      "cost": "500",
      "color": "black",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/HB/VQ/MY-44811379/men-black-plain-t-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
    },
    {
      "name": "Male t-Shirt  Full Hand",
      "id": "sm20",
      "cost": "300",
      "color": "brown",
      "material": "cotton",
      "description":
          "A Slim fit shirt for men made with high quality cotton to fit you perfectly.",
      "imageUrl":
          "https://5.imimg.com/data5/SELLER/Default/2020/12/NK/UO/VL/106359187/brown-men-polo-collar-t-shirt-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=2i_ttkuObCg"
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
                      Text(
                        widget.productName!,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 20),
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
