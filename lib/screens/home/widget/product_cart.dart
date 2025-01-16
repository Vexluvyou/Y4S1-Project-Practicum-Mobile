import 'package:flutter/material.dart';
import 'package:projectpracticum/constants.dart';
import 'package:projectpracticum/models/product_models.dart';
import 'package:projectpracticum/provider/favorite_provider.dart';
import 'package:projectpracticum/screens/details/detail_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(product: product),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontentColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                
                Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(
                      product.image,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    product.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$${product.price.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),

                    // Row(
                    //   children: product.colors.map((color) {
                    //     return Container(
                    //       width: 18,
                    //       height: 18,
                    //       margin: const EdgeInsets.only(right: 4),
                    //       decoration: BoxDecoration(
                    //         color: color,
                    //         shape: BoxShape.circle,
                    //       ),
                    //     );
                    //   }).toList(),
                    // )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    provider.toggleFavorite(product);
                  },
                  icon: Icon(
                    provider.isExist(product)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:projectpracticum/models/product_models.dart';

// class ProductCard extends StatelessWidget {
//   final Product product;

//   const ProductCard({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Navigate to the product details screen
//       },
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//         elevation: 5,
//         child: Column(
//           children: [
//             Expanded(
//               child: Image.asset(
//                 product.image,
//                 fit: BoxFit.cover,
//                 width: double.infinity,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 product.title,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: Text("\$${product.price.toStringAsFixed(2)}"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
