import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class WaterLevelCard extends StatefulWidget {
  const WaterLevelCard({
    Key key,
    this.size,
    this.icon,
    this.title,
    this.richText,
    this.subtitle,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String title;
  final String subtitle;
  final String richText;

  @override
  _WaterLevelCardState createState() => _WaterLevelCardState();
}

class _WaterLevelCardState extends State<WaterLevelCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      // width: 500,
      height: 500,
      child: LiquidCircularProgressIndicator(
        value: 0.5,
        valueColor: AlwaysStoppedAnimation(Color(0xFFd4f1f9)),
        backgroundColor: Colors.white,
        borderColor: Colors.black54,
        borderWidth: 0.0,
        direction: Axis.vertical,
        center: Text("50%"),
      ),
    );
  }
}
