import 'package:api_example_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TemGauge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      width: 500,
      height: 250,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: kBgColor,
        child: Container(
          child: SfRadialGauge(
              // mainAxisAlignment: MainAxisAlignment.center,

              ),
        ),
      ),
    );
  }
}
