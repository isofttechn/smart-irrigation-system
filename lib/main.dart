import 'package:flutter/material.dart';

import 'LandingScreen/SideBar/sidebarLayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SWALMS-TD4PAI',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Poppins'),
      home: SideBarLayout(),
    );
  }
}
