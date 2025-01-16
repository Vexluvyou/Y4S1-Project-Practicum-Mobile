import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.review,
    required this.description,
    required this.image,
    required this.price,
    required this.seller,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

// Product list with randomized Firebase image URLs
final List<Product> all = [
  Product(
    title: "Apple Mac",
    description:
        "High-quality sound and noise-cancellation for your daily commute.",
    image:
        "lib/assets/products/app_mac_pro.png",
    price: 1200,
    seller: "Tariqul Islam",
    category: "apple",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Asus Vivobook",
    description:
        "Warm and stylish sweater perfect for the winter season.",
    image:
        "lib/assets/products/asus_vivobook1.png",
    price: 600,
    seller: "",
    category: "Laptop",
    review: "(40 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Camera",
    description: "Track your fitness goals and stay connected on the go.",
    image:
        "lib/assets/products/item5.png",
    price: 55,
    seller: "",
    category: "Camera",
    review: "(50 Reviews)",
    rate: 4.3,
    quantity: 1,
  ),
  Product(
    title: "Lenovo Thinkpad",
    description: "Durable and stylish shoes for all-day comfort.",
    image:
        "lib/assets/products/item6.png",
    price: 500,
    seller: "",
    category: "Laptop",
    review: "(100 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Gaming Laptop",
    description: "Powerful laptop for gamers and professionals.",
    image:
        "lib/assets/products/item6.png",
    price: 1200,
    seller: "",
    category: "Laptop",
    review: "(150 Reviews)",
    rate: 4.9,
    quantity: 1,
  ),
];

final List<Product> apple = [
  Product(
    title: "Apple Mac",
    description:
        "High-quality sound and noise-cancellation for your daily commute.",
    image:
        "lib/assets/products/app_mac_pro.png",
    price: 1200,
    seller: "",
    category: "apple",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
];

final List<Product> lenovo = [
  Product(
    title: "Lenovo Thinkpad",
    description: "Durable and stylish shoes for all-day comfort.",
    image:
        "lib/assets/products/item6.png",
    price: 90,
    seller: "",
    category: "Laptop",
    review: "(100 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
];

final List<Product> asus = [
  Product(
    title: "Asus Vivobook",
    description:
        "Warm and stylish sweater perfect for the winter season.",
    image:
        "lib/assets/products/asus_vivobook1.png",
    price: 600,
    seller: "",
    category: "Laptop",
    review: "(40 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Gaming Laptop",
    description: "Powerful laptop for gamers and professionals.",
    image:
        "lib/assets/products/item6.png",
    price: 1200,
    seller: "",
    category: "Laptop",
    review: "(150 Reviews)",
    rate: 4.9,
    quantity: 1,
  ),
];
final List<Product> msi = [
  Product(
    title: "Msi",
    description: "none",
    image:
        "lib/assets/products/item6.png",
    price: 1200,
    seller: "",
    category: "Laptop",
    review: "(150 Reviews)",
    rate: 4.9,
    quantity: 1,
  ),
  
];

// final List<Product> dell = [
  
// ];
// final List<Product> hp = [
  
// ];

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: ListView.builder(
        itemCount: all.length,
        itemBuilder: (context, index) {
          final product = all[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(
                product.image,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(product.title),
              subtitle: Text("\$${product.price.toString()}"),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("⭐ ${product.rate}"),
                  Text(product.review),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: ProductList(),
//   ));
// }

// import 'package:flutter/material.dart';

// class Product {
//   final String title;
//   final String description;
//   final String image;
//   final String review;
//   final String seller;
//   final double price;
//   final String category;
//   final double rate;
//   int quantity;

//   Product({
//     required this.title,
//     required this.review,
//     required this.description,
//     required this.image,
//     required this.price,
//     required this.seller,
//     required this.category,
//     required this.rate,
//     required this.quantity,
//   });
// }

// final List<Product> all = [
//   Product(
//     title: "Apple Mac",
//     description: "High-quality sound and noise-cancellation.",
//     image: "lib/assets/products/app_mac_pro.png",
//     price: 120,
//     seller: "Tariqul Islam",
//     category: "Laptop",
//     review: "(320 Reviews)",
//     rate: 4.8,
//     quantity: 1,
//   ),
//   Product(
//     title: "Asus Vivobook",
//     description: "Warm and stylish sweater perfect for the winter season.",
//     image: "lib/assets/products/asus_vivobook.png",
//     price: 80,
//     seller: "Joy Store",
//     category: "Women Fashion",
//     review: "(40 Reviews)",
//     rate: 4.5,
//     quantity: 1,
//   ),
// ];

// class ProductList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Product List"),
//       ),
//       body: ListView.builder(
//         itemCount: all.length,
//         itemBuilder: (context, index) {
//           final product = all[index];
//           return Card(
//             margin: EdgeInsets.all(10),
//             child: ListTile(
//               leading: Image.asset(
//                 product.image,
//                 width: 50,
//                 height: 50,
//                 fit: BoxFit.cover,
//               ),
//               title: Text(product.title),
//               subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
//               trailing: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("⭐ ${product.rate}"),
//                   Text(product.review),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: ProductList(),
//   ));
// }
