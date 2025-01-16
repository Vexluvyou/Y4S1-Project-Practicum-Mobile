// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectpracticum/auth/login.dart';
import 'package:projectpracticum/support_widget.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
String? name, email, password;
TextEditingController namecontroller = TextEditingController();
TextEditingController mailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

final _formkey= GlobalKey<FormState>();

// registration()async{
//   if(password!=null && name!=null && email!=null){
//     try{
//       UserCredential userCredential= await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);

//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         backgroundColor: Colors.redAccent,
//         content: Text("Registered Successfully", style: TextStyle(fontSize: 20.0),)));
//         String Id= randomAlphaNumeric(10);
//         await SharedPreferenceHelper().saveUserEmail(mailcontroller.text);
//         await SharedPreferenceHelper().saveUserId(Id);
//         await SharedPreferenceHelper().saveUserName(namecontroller.text);
//         await SharedPreferenceHelper().saveUserImage("https://firebasestorage.googleapis.com/v0/b/barberapp-ebcc1.appspot.com/o/icon1.png?alt=media&token=0fad24a5-a01b-4d67-b4a0-676fbc75b34a");
//         Map<String, dynamic> userInfoMap={
//           "Name": namecontroller.text,
//           "Email": mailcontroller.text,
//           "Id": Id,
//             "Image":
//               "https://firebasestorage.googleapis.com/v0/b/barberapp-ebcc1.appspot.com/o/icon1.png?alt=media&token=0fad24a5-a01b-4d67-b4a0-676fbc75b34a"
//         };
//         await DatabaseMethods().addUserDetails(userInfoMap, Id);
//         Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNav()));
//     } on FirebaseException catch(e){
//       if(e.code=='weak-password'){
//          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         backgroundColor: Colors.redAccent,
//         content: Text("Password Provided is too Weak", style: TextStyle(fontSize: 20.0),)));
//       }
//       else if(e.code=="email-already-in-use"){
//          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         backgroundColor: Colors.redAccent,
//         content: Text("Account Already exsists", style: TextStyle(fontSize: 20.0),)));
//       }
//     }
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0, bottom: 40.0),
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
                    "Sign Up",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    "Please input the details",
                    style: AppWidget.lightTextFeildStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
                 SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Name",
                  style: AppWidget.lightTextFeildStyle(),
                ),
                SizedBox(height: 20.0,),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(color: Color(0xFFF4F5F9), borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return 'Please Enter your Name';
                      }
                    
                      return null;
                    },
                    controller: namecontroller,
                    decoration: InputDecoration(border: InputBorder.none, hintText: "Name"),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Email",
                  style: AppWidget.lightTextFeildStyle(),
                ),
                SizedBox(height: 20.0,),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(color: Color(0xFFF4F5F9), borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                       validator: (value){
                      if(value==null||value.isEmpty){
                        return 'Please Enter your Email';
                      }
                    
                      return null;
                    },
                    controller: mailcontroller,
                    decoration: InputDecoration(border: InputBorder.none, hintText: "Email"),
                  ),
                ),
                  SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Password",
                  style: AppWidget.lightTextFeildStyle(),
                ),
                SizedBox(height: 20.0,),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(color: Color(0xFFF4F5F9), borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    obscureText: true,
                       validator: (value){
                      if(value==null||value.isEmpty){
                        return 'Please Enter your Password';
                      }
                    
                      return null;
                    },
                    controller: passwordcontroller,
                    decoration: InputDecoration(border: InputBorder.none, hintText: "Password"),
                  ),
                ),
              
                SizedBox(height: 30.0,),
                GestureDetector(
                  onTap: (){
                    if(_formkey.currentState!.validate()){
                      setState(() {
                        name= namecontroller.text;
                        email= mailcontroller.text;
                        password=passwordcontroller.text;
                      });
                    }
                    // registration();
                  },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text("SIGN UP", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Already have an account? ", style: AppWidget.lightTextFeildStyle(),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
                      },
                      child: Text("Sign In", style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.w500),)),
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
