import 'package:api_example_app/SensorScreen/charts/chartComponents/TemChartRectangular.dart';
import 'package:api_example_app/SensorScreen/charts/chartComponents/WaterLevelCard.dart';
import 'package:api_example_app/SensorScreen/charts/chartComponents/cubit/water_level_cubit.dart';
import 'package:api_example_app/SensorScreen/charts/chartComponents/service/water_level_service.dart';
import 'package:api_example_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc.navigation_bloc/navigation_bloc.dart';

class WaterChart extends StatefulWidget with NavigationStates {
  @override
  _WaterChartState createState() => _WaterChartState();
}

class _WaterChartState extends State<WaterChart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kOrangeColor,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Water Volume',
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
      body: Container(
        height: double.infinity,
        child: ListView(
          children: [
            TemChartRectangular(),
            BlocProvider(
              create: (context) => WaterLevelCubit(
                waterLevelService: WaterLevelService(),
              )..fetchWaterLevel(),
              child: WaterLevelCard(),
            ),
            SizedBox(height: size.height * 0.2),
          ],
        ),
      ),
    );
  }
}
