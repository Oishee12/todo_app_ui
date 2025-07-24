import 'package:flutter/material.dart';
import 'package:todoapp/custom_widget/custom_text.dart';
import 'package:todoapp/screens/home_page.dart';
import 'package:todoapp/utils/app_string.dart';
import 'package:todoapp/custom_widget/custom_text_field.dart';
import 'package:todoapp/screens/signup_screen.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(LoginScreen());

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  final formkey = GlobalKey<FormState>();
  final GlobalKey emailFieldKey = GlobalKey();
  final GlobalKey passFieldKey = GlobalKey();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passController = TextEditingController();

  final String baseUrl = "http://172.252.13.83:2000/api/v1/auth/login";

  Future<bool> loginUser(String email, String password) async {
    final url = Uri.parse(baseUrl);

  try {
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (data['success'] == true) {
        final token = data['data']['accessToken'];
        print("Access Token: $token");
        return true;
      }
      else {
        print("Login failed: ${data['message']}");
        return false;
      }
    } else {
      print("Server error: ${response.statusCode}");
      return false;
    }
    } catch (e) {
    print("Error occurred: $e");
    return false;
  }
  }
  @override
  Widget build(BuildContext context) {
    // bool rememberMe = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 160, horizontal: 20),
          child: Form(
            key: formkey,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: AppStrings.welcome,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    size: 35,
                  ),
                  CustomText(
                    text: "Stay productive and take control of your tasks",
                    color: Colors.black38,
                    top: 5,
                    bottom: 30,
                  ),
                  CustomText(
                    text: "Email",
                    size: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    bottom: 5,
                  ),
                  CustomTextField(
                    key: emailFieldKey,
                    controller: emailController,
                    hintText: "Enter your email",
                    validator: (value){
                      if(value == null || value.isEmpty) {return "Enter valid email";}
                      else if(!value.contains('@gmail.com')){return "Enter valid email";}
                      return null;
                    },
                    filled: true,
                    fillColor: Colors.white,
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
                  SizedBox(height: 20),
                  CustomText(
                    text: "Password",
                    size: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    bottom: 5,
                  ),

                  CustomTextField(
                    key: passFieldKey,
                    controller: passController,
                    hintText: "Enter your password",
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return "enter password";
                      } if(value.length < 6)
                        {return "Enter at least 6 characters";}
                      return null;
                    },
                    isPassword: true,
                    filled: true,
                    fillColor: Colors.white,
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
                    padding: const EdgeInsets.only(top: 10),
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      CustomText(
                        text: "Don't have an account?",
                        size: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        // top: 20,
                        // bottom: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()),);
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        onPressed: () async{


 bool isLoggedIn = await loginUser(emailController.text.trim(), passController.text,);                  if(isLoggedIn){
   Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
                         }
},
                        child: Padding(padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text("Log In", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),
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
