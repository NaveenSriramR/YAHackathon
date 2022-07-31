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
      "name": "Men Glasses black",
      "id": "sg1",
      "cost": "100",
      "color": "black",
      "material": "glass",
      "description": "Mens Glasses black colour with latest design",
      "imageUrl":
          "https://cdn.eyemyeye.com/shared/images/products/S12A2001/S12A2001-5.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=Hc_J2412CM4"
    },
    {
      "name": "Men Glasses Brown",
      "id": "sg2",
      "cost": "150",
      "color": "brown",
      "material": "glass",
      "description": "Mens Glasses black colour with latest design",
      "imageUrl":
          "https://4.imimg.com/data4/CC/CC/GLADMIN-/upload-product-large-trendy_brown_mens_sunglasses_89070890009799_e648fafe-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=Hc_J2412CM4"
    },
    {
      "name": "Men Glasses Plain",
      "id": "sg3",
      "cost": "100",
      "color": "plain",
      "material": "glass",
      "description": "Mens Glasses black colour with latest design",
      "imageUrl":
          "https://m.media-amazon.com/images/I/51XO9windpL._UL1500_.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=Hc_J2412CM4"
    },
    {
      "name": "Women Glasses Black",
      "id": "sg4",
      "cost": "200",
      "color": "black",
      "material": "glass",
      "description": "Mens Glasses black colour with latest design",
      "imageUrl":
          "https://assets.ajio.com/medias/sys_master/root/20210602/d3xl/60b68e66aeb269a9e3d20d49/love_moschino_black_mol000_s_full-rim_square_sunglasses.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=Hc_J2412CM4"
    },
    {
      "name": "Women Glasses Brown",
      "id": "sg5",
      "cost": "500",
      "color": "brown",
      "material": "glass",
      "description": "Mens Glasses black colour with latest design",
      "imageUrl":
          "https://n.nordstrommedia.com/id/sr3/d843f908-228e-4840-a737-63313c65b288.jpeg?h=365&w=240&dpr=2",
      "youtubeLink": "https://www.youtube.com/watch?v=Hc_J2412CM4"
    },
    {
      "name": "Men Glasses black",
      "id": "sg6",
      "cost": "400",
      "color": "black",
      "material": "glass",
      "description": "Mens Glasses black colour with latest design",
      "imageUrl":
          "https://cdn.eyemyeye.com/shared/images/products/S12A2001/S12A2001-5.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=Hc_J2412CM4"
    },
    {
      "name": "Men Glasses Brown",
      "id": "sg7",
      "cost": "300",
      "color": "brown",
      "material": "glass",
      "description": "Mens Glasses black colour with latest design",
      "imageUrl":
          "https://4.imimg.com/data4/CC/CC/GLADMIN-/upload-product-large-trendy_brown_mens_sunglasses_89070890009799_e648fafe-500x500.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=Hc_J2412CM4"
    },
    {
      "name": "Men Glasses Plain",
      "id": "sg8",
      "cost": "100",
      "color": "plain",
      "material": "glass",
      "description": "Mens Glasses black colour with latest design",
      "imageUrl":
          "https://m.media-amazon.com/images/I/51XO9windpL._UL1500_.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=Hc_J2412CM4"
    },
    {
      "name": "Women Glasses Black",
      "id": "sg9",
      "cost": "150",
      "color": "black",
      "material": "glass",
      "description": "Mens Glasses black colour with latest design",
      "imageUrl":
          "https://assets.ajio.com/medias/sys_master/root/20210602/d3xl/60b68e66aeb269a9e3d20d49/love_moschino_black_mol000_s_full-rim_square_sunglasses.jpg",
      "youtubeLink": "https://www.youtube.com/watch?v=Hc_J2412CM4"
    },
    {
      "name": "Women Glasses Brown",
      "id": "sg10",
      "cost": "200",
      "color": "brown",
      "material": "glass",
      "description": "Mens Glasses black colour with latest design",
      "imageUrl":
          "https://n.nordstrommedia.com/id/sr3/d843f908-228e-4840-a737-63313c65b288.jpeg?h=365&w=240&dpr=2",
      "youtubeLink": "https://www.youtube.com/watch?v=Hc_J2412CM4"
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
