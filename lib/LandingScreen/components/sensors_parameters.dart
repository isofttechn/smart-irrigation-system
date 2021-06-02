// import 'package:api_example_app/LandingScreen/components/control_button.dart';
// import 'package:api_example_app/LandingScreen/components/default_button.dart';
// import 'package:api_example_app/SensorScreen/components/sensor_screen.dart';
// import 'package:api_example_app/constants.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class LandingScreenBody extends StatefulWidget {
//   @override
//   _LandingScreenBodyState createState() => _LandingScreenBodyState();
// }

// class _LandingScreenBodyState extends State<LandingScreenBody> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           SizedBox(height: size.height * 0.1),
//           Center(
//             child: Text(
//               'ngDAQ',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 fontSize: 25,
//               ),
//             ),
//           ),
//           SizedBox(height: size.height * 0.01),
//           Center(
//             child: Text(
//               'The ngDAQ is a Smart Agriculture solution based on IoT, seeking to increase farm productivity by automation and monitoring.',
//               textAlign: TextAlign.center,
//               style: TextStyle(color: kDarkGreyColor, fontSize: 12),
//             ),
//           ),
//           SizedBox(height: size.height * 0.05),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ControlButton(
//                 size: size,
//                 title: 'Temperature',
//                 icon: Icons.settings_outlined,
//               ),
//               ControlButton(
//                 size: size,
//                 title: 'Humidity ',
//                 icon: Icons.grain,
//               ),
//               ControlButton(
//                 size: size,
//                 title: 'Moisture',
//                 icon: Icons.highlight,
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ControlButton(
//                 size: size,
//                 title: 'PH Value',
//                 icon: Icons.opacity,
//               ),
//               ControlButton(
//                 size: size,
//                 title: 'Nutrient ',
//                 icon: Icons.ac_unit,
//               ),
//               ControlButton(
//                 size: size,
//                 title: 'Gas',
//                 icon: Icons.vpn_key,
//               ),
//             ],
//           ),
//           SizedBox(height: size.height * 0.05),
//           DefaultButton(
//             size: size,
//             title: "Next",
//             press: () {
//               Navigator.push(
//                 context,
//                 CupertinoPageRoute(
//                   builder: (context) => SensorScreen(),
//                 ),
//               );
//             },
//           ),
//           SizedBox(height: size.height * 0.05),
//         ],
//       ),
//     );
//   }
// }
