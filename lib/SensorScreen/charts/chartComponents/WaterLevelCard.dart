import 'package:api_example_app/SensorScreen/charts/chartComponents/cubit/water_level_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
// import 'package:liquid_linear_progress_indicator_page.dart';

class WaterLevelCard extends StatefulWidget {
  const WaterLevelCard({
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
  _WaterLevelCardState createState() => _WaterLevelCardState();
}

class _WaterLevelCardState extends State<WaterLevelCard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WaterLevelCubit, WaterLevelState>(
      builder: (context, state) {
        if (state.waterLevelResponse == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Container(
          margin: const EdgeInsets.only(top: 15.0),
          width: 500,
          height: 450,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: LiquidLinearProgressIndicator(
              //OR USE LiquidCircularProgressIndicator
              value: double.parse(
                      state.waterLevelResponse!.feeds.last.percentage) /
                  100.0,
              valueColor: AlwaysStoppedAnimation(
                double.parse(state.waterLevelResponse!.feeds.last.percentage) <
                        50.0
                    ? Colors.red.withOpacity(0.7)
                    : Color(0xFF3f9ff0),
              ),
              backgroundColor: Colors.white,
              borderColor: Colors.black54,
              borderWidth: 0.5,
              direction: Axis.vertical,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      '${double.parse(state.waterLevelResponse!.feeds.last.percentage).toStringAsFixed(2)} %'),
                  Text(
                      'Last Update: ${state.waterLevelResponse!.feeds.last.createdAt}'),
                  Text('Last api Call: ${state.lastApiCall} '),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
