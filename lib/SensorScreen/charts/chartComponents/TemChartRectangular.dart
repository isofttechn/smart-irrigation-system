import 'package:flutter/material.dart';
import 'package:api_example_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TemChartRectangular extends StatelessWidget {
  const TemChartRectangular({
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
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      width: 500,
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Colors.white,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          FontAwesomeIcons.cloudShowersHeavy,
                          size: 50,
                          color: kOrangeColor,
                        ),
                        title: Text('27C',
                            style:
                                TextStyle(fontSize: 24.0, color: kOrangeColor)),
                        subtitle: Text('Cloudy',
                            style:
                                TextStyle(fontSize: 11.0, color: kOrangeColor)),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Thurs June 3, 2021',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kOrangeColor,
                        ),
                      ),
                      Text(
                        'HUMIDITY',
                        style: TextStyle(fontSize: 11, color: kOrangeColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
