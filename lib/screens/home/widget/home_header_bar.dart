import 'package:flutter/material.dart';
import 'package:projectpracticum/support_widget.dart';
// import 'package:project_practicum/constants.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
    
        // IconButton(
        //   style: IconButton.styleFrom(
        //     backgroundColor: kcontentColor, 
        //     padding: const EdgeInsets.all(20)
        //     ),
        //   onPressed: () {},
        //   icon: Image.assets(
        //     "", 
        //     height: 20,
        //   ),
        // ),

        // Username
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Sousdey Bong,",
            style: AppWidget.lightTextFeildStyle(),
          ),

          Text(
          "Thy Chamroeunpiseth",
          style: AppWidget.boldTextFeildStyle(),
          )

        ],
      ),
    
        // Profile 

        IconButton(
          onPressed: () {
            // Add your onPressed logic here
          },
          icon: Container(
            width: 40, // Adjust width of the profile icon
            height: 40, // Adjust height of the profile icon
            decoration: const BoxDecoration(
              shape: BoxShape.circle, // Makes the image circular
              image: DecorationImage(
                image: AssetImage('lib/assets/images/pic.jpg'), // Your image path
                fit: BoxFit.cover, // Ensures the image covers the circular frame
              ),
            ),
          ),
        ),

        // IconButton(
        //   onPressed: () {
        //     // Add your onPressed logic here
        //   },
        //   icon: const CircleAvatar(
        //     radius: 20, // Profile icon size
        //     backgroundImage: AssetImage('lib/assets/images/pic.jpg'),
        //      // Replace with your image path
        //     backgroundColor: Colors.transparent, // Optional: Transparent background
        //   ),
        // )

        // IconButton(
        //   style: IconButton.styleFrom(
        //     backgroundColor: kcontentColor, 
        //     padding: const EdgeInsets.all(10)
        //     ),
        //   onPressed: () {},
        //   icon: const Icon(Icons.person_rounded),
        //   iconSize: 30,
        // )

        
      ],
    );
  }
}