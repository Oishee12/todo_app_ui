import 'package:flutter/material.dart';
import 'package:todoapp/custom_widget/custom_text_field.dart';
import 'package:todoapp/gen/assets/assets.gen.dart';
import 'package:todoapp/custom_widget/custom_text.dart';
import 'package:todoapp/screens/my_profile.dart';
import 'package:todoapp/screens/home_page.dart';
import 'package:get/get.dart';
import 'package:todoapp/screens/add_task.dart';
import 'package:todoapp/screens/account_settings.dart';
import 'package:todoapp/screens/terms_and_conditions.dart';
import 'package:todoapp/screens/privacy_policy.dart';
import 'package:todoapp/screens/login_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 50, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                      child: Assets.greenBackground.image(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: -40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Assets.profilePic.image(
                          width: 150,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 60),

              // Wrap rest of the content with horizontal padding
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => MyProfile());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.person, color: Colors.green,),
                            Expanded(child: IgnorePointer(
                              child: CustomTextField(
                                hintText: "My Profile",
                                readOnly: true,
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 20, color: Colors.green,),
                            SizedBox(width: 10,)
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    GestureDetector(
                      onTap: () {
                        Get.to(() => AccountSettings());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.settings, color: Colors.green,),
                            Expanded(child: IgnorePointer(
                              child: CustomTextField(
                                hintText: "Account Settings",
                                readOnly: true,
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 20, color: Colors.green,),
                            SizedBox(width: 10,)
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 30),
                    CustomText(
                      text: "More",
                      size: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      bottom: 2,
                    ),

                    GestureDetector(
                      onTap: () {
                        Get.to(() => TermsAndConditions());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.description, color: Colors.green,),
                            Expanded(child: IgnorePointer(
                              child: CustomTextField(
                                hintText: "Terms and Condition",
                                readOnly: true,
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 20, color: Colors.green,),
                            SizedBox(width: 10,)
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    GestureDetector(
                      onTap: () {
                        Get.to(() => PrivacyPolicy());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.privacy_tip_outlined, color: Colors.green,),
                            Expanded(child: IgnorePointer(
                              child: CustomTextField(
                                hintText: "Privacy policy",
                                readOnly: true,
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 20, color: Colors.green,),
                            SizedBox(width: 10,)
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.help_outline_rounded, color: Colors.green,),
                            Expanded(child: IgnorePointer(
                              child: CustomTextField(
                                hintText: "Help/Support",
                                readOnly: true,
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 20, color: Colors.green,),
                            SizedBox(width: 10,)
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    GestureDetector(
                      onTap: () {
                        Get.to(() => LoginScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.logout, color: Colors.green,),
                            Expanded(child: IgnorePointer(
                              child: CustomTextField(
                                hintText: "Log Out",
                                readOnly: true,
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                            ),
                            // Icon(Icons.arrow_forward_ios, size: 20, color: Colors.green,),
                            // SizedBox(width: 10,)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => HomePage());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home, color: Colors.black),
                      SizedBox(height: 2),
                      Text("My Task")
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => AddTask());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: Colors.black),
                      Text("Add Task")
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => ProfilePage());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_outline, color: Colors.black),
                      Text("Profile")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
