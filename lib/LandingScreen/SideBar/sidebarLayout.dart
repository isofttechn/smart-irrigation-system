import 'package:api_example_app/SensorScreen/charts/GasChart.dart';
import 'package:api_example_app/SensorScreen/charts/HumChart.dart';
import 'package:api_example_app/SensorScreen/charts/MoisChart.dart';
import 'package:api_example_app/SensorScreen/charts/NurChart.dart';
import 'package:api_example_app/SensorScreen/charts/PhChart.dart';
import 'package:api_example_app/SensorScreen/charts/TemChart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

import '../../constants.dart';
import '/LandingScreen/SideBar/bottomBar.dart';

import '/LandingScreen/components/body.dart';
import '/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sidebar.dart';

class SideBarLayout extends StatelessWidget {
  // const SideBarLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Center(
      //       child: Text(
      //         'ngDAQ',
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //           color: kBgColor,
      //           fontSize: 22,
      //         ),
      //       ),
      //     ),
      //     backgroundColor: kOrangeColor),
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(),
        child: Stack(
          children: [
            BlocBuilder<NavigationBloc, NavigationStates>(
                builder: (context, NavigationState) {
              return NavigationState as Widget;
            }),
            SpinCircleBottomBarHolder(
              bottomNavigationBar: SCBottomBarDetails(
                  circleColors: [kBgColor, kDarkGreyColor, kOrangeColor],
                  iconTheme: IconThemeData(color: Colors.white),
                  activeIconTheme: IconThemeData(color: Colors.greenAccent),
                  actionButtonDetails: SCActionButtonDetails(
                      color: Colors.blueGrey,
                      icon: Icon(Icons.expand_less),
                      elevation: 0),
                  backgroundColor: kOrangeColor,
                  bnbHeight: 100,
                  items: <SCBottomBarItem>[
                    SCBottomBarItem(
                      icon: Icons.dashboard,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingScreenBody()),
                        );
                      },
                    ),
                    SCBottomBarItem(
                      icon: Icons.account_box,
                      onPressed: () {},
                    ),
                    SCBottomBarItem(
                      icon: Icons.notifications,
                      onPressed: () {},
                    ),
                    SCBottomBarItem(
                      icon: Icons.settings,
                      onPressed: () {},
                    ),
                  ],
                  circleItems: <SCItem>[
                    SCItem(
                      icon: Icon(
                        FontAwesomeIcons.temperatureHigh,
                        color: kOrangeColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TemChart()),
                        );
                      },
                    ),
                    SCItem(
                      icon: Icon(
                        FontAwesomeIcons.cloudShowersHeavy,
                        color: kOrangeColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HumChart()),
                        );
                      },
                    ),
                    SCItem(
                      icon: Icon(
                        FontAwesomeIcons.hourglass,
                        color: kOrangeColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MoisChart()),
                        );
                      },
                    ),
                    SCItem(
                      icon: Icon(
                        FontAwesomeIcons.meteor,
                        color: kOrangeColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PhChart()),
                        );
                      },
                    ),
                    SCItem(
                      icon: Icon(
                        FontAwesomeIcons.leaf,
                        color: kOrangeColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NurChart()),
                        );
                      },
                    ),
                    SCItem(
                      icon: Icon(
                        FontAwesomeIcons.flask,
                        color: kOrangeColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GasChart()),
                        );
                      },
                    ),
                  ]),
              child: Container(width: 0.0, height: 0.0),
            ),
            SideBar(),
          ],
        ),
      ),
    );
  }
}
