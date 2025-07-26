import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/controller/task_controller.dart';
import 'package:todoapp/screens/home_page.dart';
import 'package:todoapp/screens/add_task.dart';
import 'package:todoapp/custom_widget/custom_text_field.dart';
import 'package:todoapp/screens/change_password.dart';
import 'package:todoapp/screens/login_screen.dart';

class AccountSettings extends StatelessWidget {
  AccountSettings({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  final TaskController taskController = Get.find<TaskController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text("Account Settings", style: TextStyle(color: Colors.black)),
            leading: Padding(
              padding: EdgeInsets.all(6),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade300,
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.green,
                      size: 20,
                    ),
                  ),
                ),
              ),

            ),
          ),
          SizedBox(height: 40,),

          Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => ChangePassword());
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
                        Icon(Icons.lock_outline, color: Colors.green,),
                        Expanded(child: IgnorePointer(
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              inputDecorationTheme: InputDecorationTheme(
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                            child: CustomTextField(
                              hintText: "Change Password",
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
                        Icon(Icons.delete, color: Colors.red,),
                        Expanded(child: IgnorePointer(
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              inputDecorationTheme: InputDecorationTheme(
                                hintStyle: TextStyle(color: Colors.red),
                              ),
                            ),
                            child: CustomTextField(
                              hintText: "Delete Account",
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
                        ),
                        Icon(Icons.arrow_forward_ios, size: 20, color: Colors.red,),
                        SizedBox(width: 10,)
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
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
                onTap: () {},
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
