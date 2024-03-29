import 'package:api_example_app/constants.dart';
import 'package:flutter/material.dart';

import '/SensorScreen/charts/chartComponents/TemChartRectangular.dart';
import '../../bloc.navigation_bloc/navigation_bloc.dart';
import 'chartComponents/GasCard.dart';

class GasChart extends StatefulWidget with NavigationStates {
  @override
  _GasChartState createState() => _GasChartState();
}

class _GasChartState extends State<GasChart> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: kOrangeColor,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Gas Data',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kBgColor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            TemChartRectangular(),
            GasCard(),
          ],
        ));
  }
}
