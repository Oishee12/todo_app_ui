import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/controller/task_controller.dart';
import 'package:todoapp/screens/home_page.dart';
import 'package:todoapp/screens/add_task.dart';
import 'package:todoapp/gen/assets/assets.gen.dart';
import 'package:todoapp/custom_widget/custom_text.dart';
import 'package:todoapp/custom_widget/custom_text_field.dart';
class EditProfile extends StatelessWidget {
  EditProfile({super.key});

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
            title: Text("Edit Profile", style: TextStyle(color: Colors.green)),
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
          SizedBox(height: 20,),
          Center(
            child: Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Assets.mojahidsPhoto.image(
                  width: 150,
                  height: 150,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "First Name",
                  size: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  bottom: 2,
                ),
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

                        Expanded(child: IgnorePointer(
                          child: CustomTextField(
                            hintText: "e.g. Kristin",
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

                        SizedBox(width: 10,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                CustomText(
                  text: "Last Name",
                  size: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  bottom: 2,
                ),
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
                        Expanded(child: IgnorePointer(
                          child: CustomTextField(
                            hintText: "e.g. Cooper",
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
                        SizedBox(width: 10,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                CustomText(
                  text: "Email Address",
                  size: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  bottom: 2,
                ),
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
                        Expanded(child: IgnorePointer(
                          child: CustomTextField(
                            hintText: "e.g. kristincooper@gmail.com",
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
                        SizedBox(width: 10,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                CustomText(
                  text: "Address",
                  size: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  bottom: 2,
                ),
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
                        Expanded(child: IgnorePointer(
                          child: CustomTextField(
                            hintText: "e.g. 1234 Elm Street, Springfield, IL",
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
                        SizedBox(width: 10,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                onPressed: () {},

                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Update",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
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
