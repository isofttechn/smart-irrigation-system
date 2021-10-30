import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class BottomBar extends StatelessWidget {
  // const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinCircleBottomBarHolder(
      bottomNavigationBar: SCBottomBarDetails(items: <SCBottomBarItem>[
        SCBottomBarItem(
          icon: Icons.dashboard,
          onPressed: () {},
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
      ], circleItems: <SCItem>[
        SCItem(
          icon: Icon(Icons.ad_units),
          onPressed: () {},
        ),
      ]),
      child: Container(width: 0.0, height: 0.0),
    );
  }
}
