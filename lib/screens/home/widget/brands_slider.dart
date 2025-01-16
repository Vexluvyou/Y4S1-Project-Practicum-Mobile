import 'package:flutter/material.dart';
import 'package:projectpracticum/models/brand_models.dart';
// import 'package:project_practicum/widget/banner_slider.dart';

class BrandsSlider extends StatelessWidget {
  const BrandsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: brandsList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 65, 
                width: 65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      brandsList[index].image
                    ),
                    fit: BoxFit.cover
                  ),
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
          );

        },
        separatorBuilder: (context, index) => const  SizedBox(width: 20,),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:projectpracticum/models/brand_models.dart';

// class BrandsSlider extends StatelessWidget {
//   const BrandsSlider({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 130,
//       child: ListView.separated(
//         scrollDirection: Axis.horizontal,
//         itemCount: brandsList.length,
//         itemBuilder: (context, index) {
//           return Column(
//             children: [
//               Container(
//                 height: 65,
//                 width: 65,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(brandsList[index].image),
//                     fit: BoxFit.cover,
//                   ),
//                   shape: BoxShape.circle,
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 brandsList[index].title,
//                 style: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               )
//             ],
//           );
//         },
//         separatorBuilder: (context, index) => const SizedBox(width: 20),
//       ),
//     );
//   }
// }
