import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const BannerSlider({
    super.key,
    required this.currentSlide,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "lib/assets/banners/discountSlider1.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "lib/assets/banners/discountSlider2.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "lib/assets/banners/discountSlider3.jpg",
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentSlide == index
                          ? Colors.black
                          : Colors.transparent,
                      border: Border.all(
                        color: Colors.black,
                      )),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// class BannerSlider extends StatelessWidget {
//   final Function(int) onChange;
//   final int currentSlide;
//   const BannerSlider({
//     super.key,
//     required this.currentSlide,
//     required this.onChange,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SizedBox(
//           height: 220,
//           width: double.infinity,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(15),
//             child: PageView(
//               scrollDirection: Axis.horizontal,
//               allowImplicitScrolling: true,
//               onPageChanged: onChange,
//               physics: const ClampingScrollPhysics(),
//               children: [
//                 Image.asset(
//                   "lib/assets/banners/discountSlider1.jpg",
//                   fit: BoxFit.cover,
//                 ),
//                 Image.asset(
//                   "lib/assets/banners/discountSlider2.jpg",
//                   fit: BoxFit.cover,
//                 ),
//                 Image.asset(
//                   "lib/assets/banners/discountSlider3.jpg",
//                   fit: BoxFit.cover,
//                 )
//               ],
//             ),
//           ),
//         ),
//         Positioned.fill(
//           bottom: 10,
//           child: Align(
//             alignment: Alignment.bottomCenter,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 5,
//                 (index) => AnimatedContainer(
//                   duration: const Duration(microseconds: 300),
//                   width: currentSlide == index ? 15 : 8,
//                   height: 8,
//                   margin: const EdgeInsets.only(right: 3),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: currentSlide == index
//                           ? Colors.black
//                           : Colors.transparent,
//                       border: Border.all(
//                         color: Colors.black,
//                       )),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class BannerSlider extends StatefulWidget {
//   final int currentSlide;
//   final Function(int) onChange;

//   const BannerSlider({
//     super.key,
//     required this.currentSlide,
//     required this.onChange,
//   });

//   @override
//   State<BannerSlider> createState() => _BannerSliderState();
// }

// class _BannerSliderState extends State<BannerSlider> {
//   List<String> bannerUrls = []; // List to store banner image URLs

//   @override
//   void initState() {
//     super.initState();
//     fetchBanners(); // Fetch banners on initialization
//   }

//   Future<void> fetchBanners() async {
//     try {
//       // Fetch data from Firestore
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
//     return bannerUrls.isEmpty
//         ? const Center(child: CircularProgressIndicator()) // Show loading indicator
//         : Stack(
//             children: [
//               SizedBox(
//                 height: 180,
//                 width: double.infinity,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: PageView.builder(
//                     scrollDirection: Axis.horizontal,
//                     onPageChanged: widget.onChange,
//                     itemCount: bannerUrls.length, // Use dynamic item count
//                     itemBuilder: (context, index) {
//                       return Image.network(
//                         bannerUrls[index],
//                         fit: BoxFit.cover,
//                         loadingBuilder: (context, child, loadingProgress) {
//                           if (loadingProgress == null) return child;
//                           return const Center(child: CircularProgressIndicator());
//                         },
//                       );
//                     },
//                   ),
//                 ),
//               ),
//               Positioned.fill(
//                 bottom: 10,
//                 child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: List.generate(
//                       bannerUrls.length, // Dynamic dot count
//                       (index) => AnimatedContainer(
//                         duration: const Duration(milliseconds: 300),
//                         width: widget.currentSlide == index ? 15 : 8,
//                         height: 8,
//                         margin: const EdgeInsets.only(right: 3),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: widget.currentSlide == index ? Colors.white : Colors.transparent,
//                           border: Border.all(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           );
//   }
// }
