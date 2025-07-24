import 'package:flutter/material.dart';
import 'package:todoapp/screens/login_screen.dart';

void main() => runApp(SplashScreen());

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  loginScreenRoute() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    loginScreenRoute();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Splash Screen!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
      ),
    );
  }
}



