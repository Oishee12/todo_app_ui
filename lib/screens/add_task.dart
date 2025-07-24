import 'package:flutter/material.dart';
import 'package:todoapp/custom_widget/custom_text.dart';
import 'package:todoapp/custom_widget/custom_text_field.dart';
// import 'package:todoapp/custom_widget/custom_card.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask>  {
  final formkey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 160, horizontal: 20),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               AppBar(
                 backgroundColor: Colors.white,
                 centerTitle: true,
                 title: Text("Add Task",),
                 leading: CircleAvatar(
                   child: Icon(Icons.arrow_back_ios),
                 ),
               ),
                SizedBox(height: 40,),
                CustomText(
                  text: "Task title",
                  size: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  bottom: 5,
                ),
                CustomTextField(
                  controller: emailController,
                  hintText: "e.g.Design Landing Page Header",
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

                SizedBox(height: 30,),

                CustomText(
                  text: "Description",
                  size: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  bottom: 5,
                ),
                CustomTextField(
                   controller: emailController,
                  // hintText: "e.g. include logo, navigation, and CTA button with brand color",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 50),
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
                      onPressed: () {

                      },
                      child: Padding(padding: EdgeInsets.symmetric(vertical: 20), child: Text("Save Task", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
