import 'package:api_example_app/LandingScreen/components/Cards.dart';
import 'package:api_example_app/LandingScreen/components/control_button.dart';
import 'package:api_example_app/LandingScreen/components/default_button.dart';
import 'package:api_example_app/SensorScreen/components/sensor_screen.dart';
import 'package:api_example_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingScreenBody extends StatefulWidget {
  @override
  _LandingScreenBodyState createState() => _LandingScreenBodyState();
}

class _LandingScreenBodyState extends State<LandingScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: size.height * 0.1),
            Center(
              child: Text(
                'ngDAQ',
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
                            builder: (context) => new SensorScreen()));
                  },
                ),
                CardsParent(
                  size: size,
                  title: 'Hum ',
                  subtitle: '75%',
                  icon: FontAwesomeIcons.cloudShowersHeavy,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardsParent(
                  size: size,
                  icon: FontAwesomeIcons.hourglass,
                  title: 'Mos',
                  subtitle: '40',
                ),
                CardsParent(
                  size: size,
                  title: 'PH ',
                  subtitle: '14',
                  icon: FontAwesomeIcons.meteor,
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
                ),
                CardsParent(
                  size: size,
                  title: 'Gas ',
                  subtitle: 'Good',
                  icon: FontAwesomeIcons.flask,
                ),
              ],
            ),
            SizedBox(height: size.height * 0.05),
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
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
