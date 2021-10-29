import 'package:api_example_app/LandingScreen/components/Cards.dart';

import 'package:api_example_app/SensorScreen/charts/GasChart.dart';
import 'package:api_example_app/SensorScreen/charts/HumChart.dart';

import 'package:api_example_app/SensorScreen/charts/TemChart.dart';
import 'package:api_example_app/SensorScreen/charts/WaterChart.dart';

import 'package:api_example_app/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:api_example_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingScreenBody extends StatefulWidget with NavigationStates {
  @override
  _LandingScreenBodyState createState() => _LandingScreenBodyState();
}

class _LandingScreenBodyState extends State<LandingScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: size.height * 0.1),
            Center(
              child: Text(
                'SWALMS-TD4PAI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Center(
              child: Text(
                'The SWALMS-TD4PAI is an IoT base Smart water level monitoring system',
                textAlign: TextAlign.center,
                style: TextStyle(color: kDarkGreyColor, fontSize: 12),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardsParent(
                  size: size,
                  icon: FontAwesomeIcons.temperatureHigh,
                  title: 'Tem',
                  subtitle: '33C',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new TemChart()));
                  },
                ),
                CardsParent(
                  size: size,
                  title: 'Hum ',
                  subtitle: '75%',
                  icon: FontAwesomeIcons.cloudShowersHeavy,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new HumChart()));
                  },
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     CardsParent(
            //       size: size,
            //       icon: FontAwesomeIcons.hourglass,
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => new MoisChart()));
            //       },
            //       title: 'Mos',
            //       subtitle: '40',
            //     ),
            //     CardsParent(
            //       size: size,
            //       title: 'PH ',
            //       subtitle: '14',
            //       icon: FontAwesomeIcons.meteor,
            //       onTap: () {
            //         Navigator.push(context,
            //             MaterialPageRoute(builder: (context) => new PhChart()));
            //       },
            //     ),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     CardsParent(
            //       size: size,
            //       icon: FontAwesomeIcons.leaf,
            //       title: 'Nur',
            //       subtitle: 'Good',
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => new NurChart()));
            //       },
            //     ),
            //     CardsParent(
            //       size: size,
            //       title: 'Gas ',
            //       subtitle: 'Good',
            //       icon: FontAwesomeIcons.flask,
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => new GasChart()));
            //       },
            //     ),
            //   ],
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardsParent(
                  size: size,
                  icon: FontAwesomeIcons.watchmanMonitoring,
                  title: 'Wat',
                  subtitle: 'Level',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new WaterChart()));
                  },
                ),
                CardsParent(
                  size: size,
                  title: 'Hyd ',
                  subtitle: 'Ponic',
                  icon: FontAwesomeIcons.confluence,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new GasChart()));
                  },
                ),
              ],
            ),

            SizedBox(height: size.height * 0.2),
            // DefaultButton(
            //   size: size,
            //   title: "Next",
            //   press: () {
            //     Navigator.push(
            //       context,
            //       CupertinoPageRoute(
            //         builder: (context) => SensorScreen(),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
