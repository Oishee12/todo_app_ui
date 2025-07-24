import 'package:flutter/material.dart';
// import 'package:todoapp/custom_widget/custom_card.dart';
import 'package:todoapp/screens/add_task.dart';
import 'package:todoapp/utils/app_string.dart';
import 'package:todoapp/custom_widget/custom_text.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                SizedBox(height: 2,),
                CustomText(
                  text: AppStrings.task,
                  size: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ]
          ),
          leading: Padding(
            padding: EdgeInsets.all(4),
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          backgroundColor: Colors.white,
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
                      Icon(Icons.home, color: Colors.black,),
                      SizedBox(height: 2),
                      Text("My Task")
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddTask()),);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: Colors.black,),
                      Text("Add Task")
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_outline, color: Colors.black,),
                      Text("Profile")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
