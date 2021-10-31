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
        child: Center(
          child: Container(
            child: SfRadialGauge(
                // mainAxisAlignment: MainAxisAlignment.center,
                axes: <RadialAxis>[
                  RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
                    GaugeRange(
                        startValue: 0, endValue: 50, color: Colors.green),
                    GaugeRange(
                        startValue: 50, endValue: 100, color: Colors.orange),
                    GaugeRange(
                        startValue: 100, endValue: 150, color: Colors.red)
                  ], pointers: <GaugePointer>[
                    NeedlePointer(value: 40)
                  ], annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        widget: Container(
                            child: Text('40.0°C',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))),
                        angle: 90,
                        positionFactor: 0.5)
                  ])
                ]),
          ),
        ),
      ),
    );
  }
}
