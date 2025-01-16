import 'package:flutter/material.dart';
import 'package:projectpracticum/models/brand_models.dart';
import 'package:projectpracticum/models/product_models.dart';
import 'package:projectpracticum/screens/home/widget/banner_slider.dart';
import 'package:projectpracticum/screens/home/widget/home_header_bar.dart';
import 'package:projectpracticum/screens/home/widget/product_cart.dart';
import 'package:projectpracticum/screens/home/widget/search_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectcategories = [
      // all,
      apple,
      asus,
      lenovo,
      msi,
      // dell,
      // hp,
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              // for custom appbar
              const HeaderAppBar(),
              const SizedBox(height: 20),
              // for search bar
              const SearchingBar(),
              const SizedBox(height: 20),
              BannerSlider(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(
                    () {
                      currentSlider = value;
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
              // for category selection
              categoryItems(),

              const SizedBox(height: 20),
              if (selectedIndex == 0)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special For You",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),

              // for shopping items
              const SizedBox(height: 10),
              GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: selectcategories[selectedIndex].length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: selectcategories[selectedIndex][index],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox categoryItems() {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brandsList.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: selectedIndex == index
                    ? Colors.blue[200]
                    : Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(brandsList[index].image),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    brandsList[index].title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Firebase
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:project_practicum/widget/banner_slider.dart';
// import 'package:project_practicum/widget/brands_slider.dart';
// import 'package:project_practicum/widget/home_header_bar.dart';
// import 'package:project_practicum/widget/search_bar.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int currentSlide = 0;
//   List<String> bannerUrls = []; // To store the banner URLs

//   @override
//   void initState() {
//     super.initState();
//     fetchBanners(); // Fetch banner data from Firebase when the screen loads
//   }

//   // Fetch banners from Firebase Firestore
//   Future<void> fetchBanners() async {
//     try {
//       final bannersCollection = FirebaseFirestore.instance.collection('banners');
//       final snapshot = await bannersCollection.get();

//       // Extract URLs and update the state
//       final banners = snapshot.docs.map((doc) => doc['url'] as String).toList();
//       setState(() {
//         bannerUrls = banners;
//       });
//     } catch (e) {
//       print("Error fetching banners: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Custom App Bar
//               const SizedBox(height: 30),
//               const HeaderAppBar(),

//               // Search Bar
//               const SizedBox(height: 20),
//               const SearchingBar(),

//               // Banner Slider
//               const SizedBox(height: 20),
//               bannerUrls.isEmpty
//                   ? const Center(
//                       child: CircularProgressIndicator(), // Show loader while banners load
//                     )
//                   : BannerSlider(
//                       currentSlide: currentSlide,
//                       onChange: (value) {
//                         setState(() {
//                           currentSlide = value;
//                         });
//                       },
//                       bannerUrls: bannerUrls, // Pass the fetched banner URLs
//                     ),

//               // Brands Slider (if needed)
//               const SizedBox(height: 20),
//               const BrandsSlider(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
