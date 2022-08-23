import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  Color? color;
  final String txt;
  double size;
  TextOverflow overflow;
  FontWeight? fontWeight;
  PrimaryText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    this.size = 20,
    required this.txt,
    this.fontWeight = FontWeight.w500,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        color: color,
        fontFamily: 'Nunito',
        fontSize: size,
        overflow: overflow,
        fontWeight: fontWeight,
      ),
    );
  }
}
