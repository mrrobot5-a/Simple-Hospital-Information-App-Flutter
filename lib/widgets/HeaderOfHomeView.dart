import 'package:flutter/material.dart';
import 'package:second_project/main.dart';
import 'package:second_project/widgets/PhoneCall.dart';

class HeaderOfHomeView extends StatelessWidget {
  const HeaderOfHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage(
            'assets/images/dentist.jpg',
          ),
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dr Ahmed Adel",
              style: TextStyle(
                fontFamily: 'Flux',
                fontSize: 28,
                color: Color(0xff265ed7),
              ),
            ),
            Text(
              "Eye Special",
              style: TextStyle(
                fontFamily: 'Flux',
                fontSize: 21,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(
                  "3",
                  style: TextStyle(
                    fontFamily: 'Flux',
                    fontSize: 24,
                    color: Color(0xff265ed7),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Row(
                  children: [
                    PhoneCall(text: "1"),
                    SizedBox(
                      width: 10,
                    ),
                    PhoneCall(text: "2"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
