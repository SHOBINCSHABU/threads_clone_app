import 'package:flutter/material.dart';
import 'package:threads_clone_app/core/constants/colors_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.buttonColor = ColorConstants.primaryBlue,
      this.haveBorder = false,
      this.textColor = ColorConstants.primaryWhite,
      this.onTap});

  final String text;
  final Color textColor;
  final Color buttonColor;
  final bool haveBorder;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(5),
            border: haveBorder == true
                ? Border.all(color: ColorConstants.primaryBlack.withOpacity(.4))
                : null),
        child: Center(
          child: Text(text,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              )),
        ),
      ),
    );
  }
}