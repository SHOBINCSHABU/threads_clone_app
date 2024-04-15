import 'package:flutter/material.dart';
import 'package:threads_clone_app/core/constants/colors_constants.dart';
import 'package:threads_clone_app/core/constants/images_constants.dart';
import 'package:threads_clone_app/global_widgets/custom_botton.dart';
import 'package:threads_clone_app/view/login_screen.dart';

class SelectAccountScreen extends StatelessWidget {
  const SelectAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(ImagessConstants.appText),
              SizedBox(height: 50),
              CircleAvatar(
                backgroundImage: AssetImage(
                  ImagessConstants.shobinProfilePhoto
                ),
                radius: 50,
              ),
              SizedBox(height: 15),
              Text(
                "_.punyalan._",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              CustomButton(
                text: "Log in",
                onTap: () {
                  Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(builder: (context) => LoginScreen(),));
                },
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Switch accounts",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.primaryBlue),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: .1))),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Dont have an account? ",
              style:
                  TextStyle(color: ColorConstants.primaryBlack.withOpacity(.4),),
                  
              children: [
                TextSpan(
                  text: "Sign Up",
                  style: TextStyle(
                      color: ColorConstants.primaryBlack,
                      fontWeight: FontWeight.bold),
                )
              ]),
        ),
      ),
    );
  }
}