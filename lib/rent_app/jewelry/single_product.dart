import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'jewelry_dress_products.dart';
import 'product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Men Gold-Ring jewellery ",
      "id": "j1",
      "cost": "10000",
      "color": "gold",
      "material": "gold",
      "description": "Men's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://5.imimg.com/data5/AE/AG/MY-40208357/men-gold-ring-500x500.jpeg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Men Silver-Ring jewellery",
      "id": "j2",
      "cost": "5000",
      "color": "silver",
      "material": "silver",
      "description":
          "Men's silver jewellery with best design and best finishing",
      "imageUrl":
          "https://m.media-amazon.com/images/I/51sbLwDS98L._UL1500_.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Men Gold-Bracelet jewellery",
      "id": "j3",
      "cost": "10000",
      "color": "gold",
      "material": "gold",
      "description": "Men's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://5.imimg.com/data5/OO/UM/FN/SELLER-45272018/68d2e2cdb4be8ee660cc53d4cae1ed39-250x250.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Men Silver-Bracelet jewellery",
      "id": "j4",
      "cost": "5000",
      "color": "silver",
      "material": "silver",
      "description":
          "Men's silver jewellery with best design and best finishing",
      "imageUrl":
          "https://4.imimg.com/data4/WM/XG/MY-1864875/men-s-antique-silver-bracelet-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Men Gold-Chain jewellery",
      "id": "j5",
      "cost": "10000",
      "color": "gold",
      "material": "gold",
      "description": "Men's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://www.kalyanjewellers.net/images/Jewellery/Chains/images/JACOX-GOLD-CHAIN.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Women Gold-Ring jewellery ",
      "id": "j6",
      "cost": "5000",
      "color": "gold",
      "material": "gold",
      "description":
          "Women's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://staticimg.titan.co.in/Tanishq/Catalog/513218FPPAA00.jpg?impolicy=pqmed&imwidth=640",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Women Silver-Ring jewellery",
      "id": "j7",
      "cost": "10000",
      "color": "silver",
      "material": "silver",
      "description":
          "Women's silver jewellery with best design and best finishing",
      "imageUrl":
          "https://5.imimg.com/data5/NS/TW/YH/SELLER-41335228/silver-ring-for-women-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Women Gold-Bracelet jewellery",
      "id": "j8",
      "cost": "5000",
      "color": "gold",
      "material": "gold",
      "description":
          "Women's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://staticimg.titan.co.in/Tanishq/Catalog/513018BTVAA00_1.jpg?impolicy=pqmed&imwidth=640",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Women Silver-Bracelet jewellery",
      "id": "j9",
      "cost": "5000",
      "color": "silver",
      "material": "silver",
      "description":
          "Women's silver jewellery with best design and best finishing",
      "imageUrl": "https://m.media-amazon.com/images/I/51H3MJWS+qL._UY500_.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Women Gold-Chain jewellery",
      "id": "j10",
      "cost": "10000",
      "color": "gold",
      "material": "gold",
      "description":
          "Women's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://5.imimg.com/data5/TestImages/MA/IG/XM/SELLER-45281882/gold-chain-for-women-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Men Gold-Ring jewellery ",
      "id": "j11",
      "cost": "10000",
      "color": "gold",
      "material": "gold",
      "description": "Men's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://5.imimg.com/data5/AE/AG/MY-40208357/men-gold-ring-500x500.jpeg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Men Silver-Ring jewellery",
      "id": "j12",
      "cost": "5000",
      "color": "silver",
      "material": "silver",
      "description":
          "Men's silver jewellery with best design and best finishing",
      "imageUrl":
          "https://m.media-amazon.com/images/I/51sbLwDS98L._UL1500_.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Men Gold-Bracelet jewellery",
      "id": "j13",
      "cost": "10000",
      "color": "gold",
      "material": "gold",
      "description": "Men's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://5.imimg.com/data5/OO/UM/FN/SELLER-45272018/68d2e2cdb4be8ee660cc53d4cae1ed39-250x250.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Men Silver-Bracelet jewellery",
      "id": "j14",
      "cost": "5000",
      "color": "silver",
      "material": "silver",
      "description":
          "Men's silver jewellery with best design and best finishing",
      "imageUrl":
          "https://4.imimg.com/data4/WM/XG/MY-1864875/men-s-antique-silver-bracelet-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Men Gold-Chain jewellery",
      "id": "j15",
      "cost": "10000",
      "color": "gold",
      "material": "gold",
      "description": "Men's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://www.kalyanjewellers.net/images/Jewellery/Chains/images/JACOX-GOLD-CHAIN.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Women Gold-Ring jewellery ",
      "id": "j16",
      "cost": "10000",
      "color": "gold",
      "material": "gold",
      "description":
          "Women's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://staticimg.titan.co.in/Tanishq/Catalog/513218FPPAA00.jpg?impolicy=pqmed&imwidth=640",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Women Silver-Ring jewellery",
      "id": "j17",
      "cost": "5000",
      "color": "silver",
      "material": "silver",
      "description":
          "Women's silver jewellery with best design and best finishing",
      "imageUrl":
          "https://5.imimg.com/data5/NS/TW/YH/SELLER-41335228/silver-ring-for-women-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Women Gold-Bracelet jewellery",
      "id": "j18",
      "cost": "10000",
      "color": "gold",
      "material": "gold",
      "description":
          "Women's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://staticimg.titan.co.in/Tanishq/Catalog/513018BTVAA00_1.jpg?impolicy=pqmed&imwidth=640",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Women Silver-Bracelet jewellery",
      "id": "j19",
      "cost": "5000",
      "color": "silver",
      "material": "silver",
      "description":
          "Women's silver jewellery with best design and best finishing",
      "imageUrl": "https://m.media-amazon.com/images/I/51H3MJWS+qL._UY500_.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
    },
    {
      "name": "Women Gold-Chain jewellery",
      "id": "j20",
      "cost": "15000",
      "color": "gold",
      "material": "gold",
      "description":
          "Women's gold jewellery with best design and best finishing",
      "imageUrl":
          "https://5.imimg.com/data5/TestImages/MA/IG/XM/SELLER-45281882/gold-chain-for-women-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=cRLhQRaxGj8"
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
