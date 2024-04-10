import 'package:flutter/widgets.dart';

class OutlinedText extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color gradColor1;
  final Color gradColor2;
  final double? fontSize;

  const OutlinedText({
    super.key,
    required this.text,
    required this.textColor,
    required this.gradColor1,
    required this.gradColor2,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1.5
              ..color = gradColor1
              ..shader = LinearGradient(
                colors: <Color>[
                  gradColor1,
                  gradColor2,
                  //add more color here.
                ],
              ).createShader(Rect.largest),
            color: null,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ],
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText({
    super.key,
    required this.text,
    required this.textStyle,
    required this.grad1,
    required this.grad2,
    this.isTextSpan = false,
    this.begin = Alignment.topLeft,
    this.textAlign = TextAlign.start,
  });
  final String text;
  final TextStyle textStyle;
  final Color grad1;
  final Color grad2;
  final bool isTextSpan;
  final Alignment begin;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: begin,
        colors: <Color>[
          grad1,
          grad2,
        ],
      ).createShader(bounds),
      child: Text(
        text,
        style: textStyle,
        textAlign: textAlign,
      ),
    );
  }
}
