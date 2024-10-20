import 'package:flutter/material.dart';

class TextHeading extends StatelessWidget {
  final String text;
  final double? fontSize;
  const TextHeading({
    this.fontSize,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Flux',
          fontSize: fontSize ?? 24,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
