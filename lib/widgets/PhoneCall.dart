import 'package:flutter/material.dart';

class PhoneCall extends StatelessWidget {
  final String text;
  const PhoneCall({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 70,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xffe5f3fd),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.phone,
              size: 31,
            ),
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }
}
