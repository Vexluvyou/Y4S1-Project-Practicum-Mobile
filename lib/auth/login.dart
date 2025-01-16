// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:projectpracticum/auth/signup.dart';
// import 'package:projectpracticum/constants.dart';
// import 'package:projectpracticum/support_widget.dart';

// class LogIn extends StatefulWidget {
//   const LogIn({super.key});

//   @override
//   State<LogIn> createState() => _LogInState();
// }

// class _LogInState extends State<LogIn> {
//   String email = "", password = "";

//   TextEditingController mailcontroller = TextEditingController();
//   TextEditingController passwordcontroller = TextEditingController();

//   final _formkey = GlobalKey<FormState>();

//   // userLogin() async {
//   //   try {
//   //     await FirebaseAuth.instance
//   //         .signInWithEmailAndPassword(email: email, password: password);

//   //     Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNav()));
//   //   } on FirebaseAuthException catch (e) {
//   //     if (e.code == 'user-not-found') {
//   //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//   //           backgroundColor: Colors.redAccent,
//   //           content: Text(
//   //             "No User Found for that Email",
//   //             style: TextStyle(fontSize: 20.0),
//   //           )));
//   //     } else if (e.code == "wrong-password") {
//   //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//   //           backgroundColor: Colors.redAccent,
//   //           content: Text(
//   //             "Wrong Password Provided by User",
//   //             style: TextStyle(fontSize: 20.0),
//   //           )));
//   //     }
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           margin:
//               EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0, bottom: 40.0),
//           child: Form(
//             key: _formkey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                   child: Image.asset(
//                     "lib/assets/images/user.png",
//                     width: 50,
//                     height: 50,
//                   ),
//                 ),
//                 Center(
//                   child: Text(
//                     "Sign In",
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Center(
//                   child: Text(
//                     "Please enter the details below to\ncontinue.",
//                     style: AppWidget.lightTextFeildStyle(),
//                     textAlign: TextAlign.center, // Optional for additional alignment control
//                   ),
//                 ),

//                 SizedBox(
//                   height: 40.0,
//                 ),
//                 Text(
//                   "Email",
//                   style: AppWidget.lightTextFeildStyle(),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(left: 20.0),
//                   decoration: BoxDecoration(
//                       color: Color(0xFFF4F5F9),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: TextFormField(
//                     validator: (value){
//                       if(value==null||value.isEmpty){
//                         return 'Please Enter your Email';
//                       }
                    
//                       return null;
//                     },
//                     controller: mailcontroller,
//                     decoration: InputDecoration(
//                         border: InputBorder.none, hintText: "Email"),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Text(
//                   "Password",
//                   style: AppWidget.lightTextFeildStyle(),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(left: 20.0),
//                   decoration: BoxDecoration(
//                       color: Color(0xFFF4F5F9),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: TextFormField(
//                     controller: passwordcontroller,
//                       validator: (value){
//                       if(value==null||value.isEmpty){
//                         return 'Please Enter your Password';
//                       }
                    
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                         border: InputBorder.none, hintText: "Password"),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       "Forgot Password?",
//                       style: TextStyle(
//                           color: Colors.blue,
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 GestureDetector(
//                   onTap: (){
//                     if(_formkey.currentState!.validate()){
//                       setState(() {
//                         email=mailcontroller.text;
//                         password= passwordcontroller.text;
//                       });
//                     }
//                     // userLogin();
//                   },
//                   child: Center(
//                     child: Container(
//                       width: MediaQuery.of(context).size.width / 2,
//                       padding: EdgeInsets.all(18),
//                       decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Center(
//                           child: Text(
//                         "LOGIN",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold),
//                       )),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Don't have an account? ",
//                       style: AppWidget.lightTextFeildStyle(),
//                     ),
//                     GestureDetector(
//                         onTap: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (context) => SignUp()));
//                         },
//                         child: Text(
//                           "Sign Up",
//                           style: TextStyle(
//                               color: Colors.blue,
//                               fontSize: 18.0,
//                               fontWeight: FontWeight.w500),
//                         )),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:projectpracticum/auth/signup.dart';
import 'package:projectpracticum/screens/navigation_bar.dart';
import 'package:projectpracticum/support_widget.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email = "", password = "";

  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => BottomNavBar()), // Replace HomePage with your home widget
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0, bottom: 40.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5,),
                Center(
                  child: Image.asset(
                    "lib/assets/images/user.png",
                    width: 75,
                    height: 75,
                  ),
                ),
                SizedBox(height: 5,),
                const Center(
                  child: Text(
                    "Sign In",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    "Please enter the Email.",
                    style: AppWidget.lightTextFeildStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Email",
                  style: AppWidget.lightTextFeildStyle(),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your Email';
                      }
                      return null;
                    },
                    controller: mailcontroller,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: "Email"),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Password",
                  style: AppWidget.lightTextFeildStyle(),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: passwordcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your Password';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: "Password"),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        email = mailcontroller.text;
                        password = passwordcontroller.text;
                      });
                    }
                  },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: AppWidget.lightTextFeildStyle(),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
