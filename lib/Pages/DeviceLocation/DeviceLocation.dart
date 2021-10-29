import '../../LandingScreen/components/Cards.dart';
import '../../SensorScreen/charts/GasChart.dart';
import '../../SensorScreen/charts/HumChart.dart';
import '../../SensorScreen/charts/MoisChart.dart';
import '../../SensorScreen/charts/NurChart.dart';
import '../../SensorScreen/charts/PhChart.dart';
import '../../SensorScreen/charts/TemChart.dart';
import '/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';

class DevicesLocation extends StatefulWidget with NavigationStates {
  // DevicesLocation({Key? key}) : super(key: key);

  @override
  _DevicesLocationState createState() => _DevicesLocationState();
}

class _DevicesLocationState extends State<DevicesLocation> {
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
                'Device Locations',
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
                'The ngDAQ is a Smart Agriculture solution based on IoT, seeking to increase farm productivity by automation and monitoring.',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardsParent(
                  size: size,
                  icon: FontAwesomeIcons.hourglass,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new MoisChart()));
                  },
                  title: 'Mos',
                  subtitle: '40',
                ),
                CardsParent(
                  size: size,
                  title: 'PH ',
                  subtitle: '14',
                  icon: FontAwesomeIcons.meteor,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new PhChart()));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardsParent(
                  size: size,
                  icon: FontAwesomeIcons.leaf,
                  title: 'Nur',
                  subtitle: 'Good',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new NurChart()));
                  },
                ),
                CardsParent(
                  size: size,
                  title: 'Gas ',
                  subtitle: 'Good',
                  icon: FontAwesomeIcons.flask,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new GasChart()));
                  },
                ),
              ],
            ),
            // SizedBox(height: size.height * 0.05),
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
