import 'package:flutter/material.dart';

class AppWidget{

  static TextStyle lightTextFeildStyle(){
    return const TextStyle(                  
      color: Colors.black87, 
      fontSize: 15.0, 
      fontWeight: FontWeight.w500
      );
  }

  static TextStyle boldTextFeildStyle(){
    return const TextStyle(
      color:Colors.black87,
      fontSize: 18.0,
      fontWeight: FontWeight.bold
      );
  }

  static TextStyle searchHintStyle(){
    return const TextStyle(
      color:Colors.black38,
      fontSize: 15.0,
      fontWeight: FontWeight.w500
      );
  }

}