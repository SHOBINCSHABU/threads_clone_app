import 'package:flutter/material.dart';
import 'package:threads_clone_app/core/constants/images_constants.dart';
import 'package:threads_clone_app/view/select_account_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SelectAccountScreen(),));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImagessConstants.appColorlogo,
          scale: 1,
        ),
      ),
    );
  }
}