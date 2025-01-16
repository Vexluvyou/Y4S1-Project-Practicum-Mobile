import 'package:flutter/material.dart';
import 'package:projectpracticum/provider/add_to_cart_provider.dart';
import 'package:projectpracticum/provider/favorite_provider.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:projectpracticum/screens/navigation_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      // for add to cart 
      ChangeNotifierProvider(create: (_)=> CartProvider()),
      // for favorite 
      ChangeNotifierProvider(create: (_)=> FavoriteProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: const BottomNavBar(),
    ),
  );
}

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:projectpracticum/provider/add_to_cart_provider.dart';
// import 'package:projectpracticum/provider/favorite_provider.dart';
// import 'package:projectpracticum/screens/navigation_bar.dart';
// import 'package:provider/provider.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter bindings are initialized
//   await Firebase.initializeApp(); // Initialize Firebase
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         // Provider for add to cart
//         ChangeNotifierProvider(create: (_) => CartProvider()),
//         // Provider for favorites
//         ChangeNotifierProvider(create: (_) => FavoriteProvider()),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           textTheme: GoogleFonts.mulishTextTheme(),
//         ),
//         home: const BottomNavBar(), // Your navigation bar as the home screen
//       ),
//     );
//   }
// }