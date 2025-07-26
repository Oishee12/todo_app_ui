import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/screens/add_task.dart';
import 'package:todoapp/custom_widget/custom_text.dart';
import 'package:todoapp/gen/assets/assets.gen.dart';
import 'package:todoapp/controller/task_controller.dart';
import 'package:todoapp/utils/app_string.dart';
import 'package:todoapp/screens/task_details.dart';
import 'package:todoapp/screens/profile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: AppStrings.hello,
              fontWeight: FontWeight.bold,
              size: 20,
              color: Colors.black,
            ),
            SizedBox(height: 2),
            CustomText(
              text: AppStrings.task,
              size: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ],
        ),
        leading: Padding(
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            radius: 30,
            child: ClipOval(
              child: Image.asset(
                Assets.mojahidsPhoto.path,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, top: 16, bottom: 8),
            child: Text(
              "My Task",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              if (taskController.tasks.isEmpty) {
                return Center(child: Text("No tasks yet"));
              }
              return ListView.builder(
                itemCount: taskController.tasks.length,
                itemBuilder: (context, index) {
                  final task = taskController.tasks[index];
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => TaskDetailsPage(
                        title: task.title,
                        description: task.description,
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              Assets.todoCheck.path,
                              height: 40,
                              width: 40,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            task.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            task.description,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
          ),
          SizedBox(height: 10,),
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
                onTap: () {},
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
