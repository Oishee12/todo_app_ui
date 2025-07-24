import 'package:flutter/material.dart';
import 'package:todoapp/custom_widget/custom_text_field.dart';
import 'package:todoapp/custom_widget/custom_text.dart';
import 'package:todoapp/utils/app_string.dart';
import 'package:todoapp/screens/login_screen.dart';
import 'package:todoapp/screens/home_page.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool rememberMe = true;
  final formkey = GlobalKey<FormState>();
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController lnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addrController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController cpassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // bool rememberMe = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Form(
            key: formkey,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: AppStrings.create,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    size: 30,
                  ),
                  CustomText(
                    text: AppStrings.join,
                    color: Colors.black38,
                    top: 5,
                    bottom: 15,
                  ),
                  CustomText(
                    text: "First Name",
                    size: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    bottom: 2,
                  ),
                  CustomTextField(
                    controller: fnameController,
                    hintText: "Mymunah",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: 12,
                  ),
                  SizedBox(height: 5),CustomText(
                    text: "Last Name",
                    size: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    bottom: 2,
                  ),
                  CustomTextField(
                    controller: lnameController,
                    hintText: "Oishee",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: 12,
                  ),
                  SizedBox(height: 5),CustomText(
                    text: "Email Address",
                    size: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    bottom: 2,
                  ),
                  CustomTextField(
                    controller: emailController,
                    hintText: "oishee@gmail.com",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: 12,
                  ),
                  SizedBox(height: 5),
                  CustomText(
                    text: "Address",
                    size: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    bottom: 2,
                  ),
                  CustomTextField(
                    controller: addrController,
                    hintText: "Dhaka",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: 12,
                  ),
                  SizedBox(height: 5),
                  CustomText(
                    text: "Password",
                    size: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    bottom: 2,
                  ),

                  CustomTextField(
                    controller: TextEditingController(text: '......'),
                    // hintText: "Enter your password",
                    isPassword: true,
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: 12,
                  ),SizedBox(height: 5),
                  CustomText(
                    text: "Confirm Password",
                    size: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    bottom: 2,
                  ),

                  CustomTextField(
                    controller: TextEditingController(text: '......'),
                    // hintText: "Confirm your password",
                    isPassword: true,
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: 12,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value!;
                          });
                        },
                      ),
                      Text("Remember Me"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(color: Colors.black, thickness: 2),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text("or", style: TextStyle(fontSize: 16)),
                        ),
                        Expanded(
                          child: Divider(color: Colors.black, thickness: 2),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      CustomText(
                        text: "Already have an account?",
                        size: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        // top: 20,
                        // bottom: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);
                        },
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
                        },
                        child: Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Text("Continue", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
