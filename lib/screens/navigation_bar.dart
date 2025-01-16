import 'package:flutter/material.dart';
import 'package:projectpracticum/constants.dart';
import 'package:projectpracticum/screens/cart/cart_screen.dart';
import 'package:projectpracticum/screens/favorite/favorited_screen.dart';
import 'package:projectpracticum/screens/home/home_screen.dart';
import 'package:projectpracticum/screens/profile/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}


class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndext = 1;
  List screens = const [
    Scaffold(),
    HomeScreen(),
    Favorite(),
    CartScreen(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 1, 
        height: 60, 
        color: Colors.white12,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10, 
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // Home Navigation Bar
            IconButton(
              onPressed: (){
                setState(() {
                  currentIndext = 1;
                  }
                );
              }, 
              icon: Icon(
                // Icons.grid_view_outlined,
                Icons.home,
                size: 30,
                color: currentIndext == 1 ? kprimaryColor: Colors.grey.shade400,
              ),
            ),

            // Favorited Navigation Bar
            IconButton(
              onPressed: (){
                setState(() {
                  currentIndext = 2;
                  }
                );
              }, 
              icon: Icon(
                Icons.favorite,
                size: 30,
                color: currentIndext == 2 ? kprimaryColor: Colors.grey.shade400,
              ),
            ),

            // Cart Navigation Bar
            IconButton(
              onPressed: (){
                setState(() {
                  currentIndext = 3;
                });
              }, 
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
                color: currentIndext == 3 ? kprimaryColor: Colors.grey.shade400,
              ),
            ),

            // Profile Navigation Bar
            IconButton(
              onPressed: (){
                setState(() {
                  currentIndext = 4;
                  }
                );
              }, 
              icon: Icon(
                Icons.person,
                size: 30,
                color: currentIndext == 4 ? kprimaryColor: Colors.grey.shade400,
              ),
            ),

          ],
        ),
      ),

      body: screens[currentIndext],

    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:project_practicum/constants.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text('Selected Index: $currentIndex'), // Example content
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndex, // Tracks the active tab
//         onTap: (int index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//         selectedItemColor: kprimaryColor, // Active item color
//         unselectedItemColor: Colors.grey.shade400, // Inactive item color
//         showUnselectedLabels: true, // Ensures labels are always shown
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.grid_view_outlined),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart_outlined),
//             label: 'Cart',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

