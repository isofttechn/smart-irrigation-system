import 'package:flutter/material.dart';
import 'package:api_example_app/constants.dart';

class PhCard extends StatelessWidget {
  const PhCard({
    Key? key,
    this.size,
    this.icon,
    this.title,
    this.richText,
    this.subtitle,
  }) : super(key: key);

  final Size? size;
  final IconData? icon;
  final String? title;
  final String? subtitle;
  final String? richText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      width: 500,
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Colors.white,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "PH SENSOR GRAPH",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kOrangeColor,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
