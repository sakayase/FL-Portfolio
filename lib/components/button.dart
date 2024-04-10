import 'package:flutter/material.dart';
import 'package:portfolio/utils/shader_text.dart';
import 'package:portfolio/theme.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.buttonColor,
    required this.textColor,
    required this.text,
    required this.onPressed,
    this.gradColor1,
    this.gradColor2,
  });
  final Color buttonColor;
  final Color textColor;
  final String text;
  final Color? gradColor1;
  final Color? gradColor2;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    double height = 65;
    double width = 200;
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width, height),
          backgroundColor: MaterialStateColor.resolveWith(
            (states) => buttonColor,
          ),
          surfaceTintColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(width / 2),
            ),
            side: BorderSide(
              color: mainColor,
            ),
          ),
        ),
        onPressed: onPressed,
        child: ((gradColor1 != null) && (gradColor2 != null))
            ? OutlinedText(
                text: text,
                textColor: textColor,
                gradColor1: gradColor1!,
                gradColor2: gradColor2!,
              )
            : Text(
                text,
                style: TextStyle(
                  color: textColor,
                ),
              ),
      ),
    );
  }
}
