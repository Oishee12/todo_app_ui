import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/custom_widget/custom_text.dart';
import 'package:todoapp/custom_widget/custom_text_field.dart';
import 'package:todoapp/controller/task_controller.dart';
import 'package:todoapp/custom_widget/task_model.dart';
import 'package:todoapp/screens/home_page.dart';
import 'package:todoapp/screens/profile.dart';
// import 'package:todoapp/screens/add_task.dart';

class AddTask extends StatelessWidget {
  AddTask({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  final TaskController taskController = Get.find<TaskController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Add Task", style: TextStyle(color: Colors.black)),
        leading: Padding(
          padding: EdgeInsets.all(6),
          child: GestureDetector(
            onTap: () => Get.back(),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 18,
                ),
              ),
            ),
          ),

        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Task title",
              size: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              bottom: 5,
            ),
            CustomTextField(
              controller: titleController,
              hintText: "e.g. Design Landing Page Header",
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 10),
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
            SizedBox(height: 30),
            CustomText(
              text: "Description",
              size: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              bottom: 5,
            ),
            CustomTextField(
              controller: descController,
              hintText: "e.g. Include logo, navigation, and CTA button with brand color",
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.only(top: 10, left: 10), // cursor top-left
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
              minLines: 6,
              maxLines: 60,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  final title = titleController.text.trim();
                  final description = descController.text.trim();

                  if (title.isEmpty || description.isEmpty) {
                    Get.snackbar(
                      "Missing Info",
                      "Please enter both title and description.",
                      backgroundColor: Colors.red.shade100,
                      colorText: Colors.black,
                      snackPosition: SnackPosition.BOTTOM,
                      margin: EdgeInsets.all(16),
                    );
                    return;
                  }

                  final newTask = Task(title: title, description: description);
                  taskController.addTask(newTask);
                  Get.back();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    "Save Task",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
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
