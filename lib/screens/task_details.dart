import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/screens/edit_task.dart';
import 'package:todoapp/screens/home_page.dart';
import 'package:todoapp/screens/profile.dart';
import 'package:todoapp/screens/add_task.dart';

class TaskDetailsPage extends StatelessWidget {
  final String title;
  final String description;

 const TaskDetailsPage({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: Icon(Icons.arrow_back_ios, color: Colors.green, size: 20),
            ),
          ),
        ),
        title: Text(
          'Tasks Details',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white70,
          ),
          height: 400,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Task Title Section
                  Row(
                    children: [
                      Icon(Icons.add_card, color: Colors.green.shade300),
                      SizedBox(width: 8),
                      Text(
                        "Task Title",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    title,
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                  Divider(color: Colors.green.shade200, thickness: 1, height: 40),
          SizedBox(height: 30,),
                  Row(
                    children: [
                      Icon(Icons.description, color: Colors.green.shade300),
                      SizedBox(width: 8),
                      Text(
                        "Task Description",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),

                  Divider(color: Colors.green.shade200, thickness: 1, height: 40),
                  SizedBox(height: 25),

                  // Buttons Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Delete Button
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.red),
                          foregroundColor: Colors.red,
                        ),
                        icon: Icon(Icons.delete),
                        label: Text("Delete Task"),
                      ),

                      // Edit Button
                      OutlinedButton.icon(
                        onPressed: () {
                          Get.to(() => EditTask());
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.green),
                          foregroundColor: Colors.green,
                        ),
                        icon: Icon(Icons.edit),
                        label: Text("Edit Task"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
