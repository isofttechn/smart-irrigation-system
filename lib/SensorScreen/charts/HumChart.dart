import 'package:api_example_app/SensorScreen/charts/chartComponents/TemChartRectangular.dart';
import 'package:api_example_app/constants.dart';
import 'package:flutter/material.dart';

import '../../bloc.navigation_bloc/navigation_bloc.dart';
import 'chartComponents/HumCard.dart';

class HumChart extends StatefulWidget with NavigationStates {
  @override
  _HumChartState createState() => _HumChartState();
}

class _HumChartState extends State<HumChart> {
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
              Center(
                child: Text(
                  'Humidity Data',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kBgColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            TemChartRectangular(),
            HumCard(),
          ],
        ));
  }
}
