import 'dart:async';

import 'package:api_example_app/LandingScreen/SideBar/menu_item.dart';
import 'package:api_example_app/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:rxdart/rxdart.dart';
// import 'package:rxdart/rxdart.dart';
import '../../constants.dart';

class SideBar extends StatefulWidget {
  // const SideBar({Key ? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  AnimationController _animationController;
  StreamController<bool> isSidebarOpenedStreamController;
  Stream<bool> isSidebarOpenedStream;
  StreamSink<bool> isSidebarOpenedSink;

  // final bool isSidebarOpened = true;
  final _animationDuration = const Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return StreamBuilder<bool>(
      initialData: false,
      stream: isSidebarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSideBarOpenedAsync.data ? 0 : -screenWidth,
          right: isSideBarOpenedAsync.data ? 0 : screenWidth - 45,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  // padding: const EdgeInsets.symmetric(horizontal: 10),
                  color: kOrangeColor,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                        ),
                        ListTile(
                          title: Text(
                            "Abraham",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          subtitle: Text(
                            "isofttechn@gmail.com",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                          leading: CircleAvatar(
                            child: Icon(
                              Icons.perm_identity,
                              color: Colors.white,
                            ),
                            radius: 40,
                          ),
                        ),
                        Divider(
                          height: 64,
                          thickness: 0.5,
                          color: Colors.white.withOpacity(0.3),
                          indent: 32,
                          endIndent: 32,
                        ),
                        MenuItem(
                          icon: Icons.dashboard,
                          title: 'Dashboard',
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context).add(
                                NavigationEvents.LandingScreenBodyClickEvent);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ExpansionTile(
                            title: Row(
                              children: [
                                Icon(
                                  Icons.sensor_door,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  "Sensor Parameters",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            children: <Widget>[
                              MenuItem(
                                icon: Icons.sensor_window,
                                title: 'Humidity',
                                onTap: () {
                                  onIconPressed();
                                  BlocProvider.of<NavigationBloc>(context)
                                      .add(NavigationEvents.HumChartClickEvent);
                                },
                              ),
                              MenuItem(
                                icon: Icons.sensor_window,
                                title: 'Temperature Sensor',
                                onTap: () {
                                  onIconPressed();
                                  BlocProvider.of<NavigationBloc>(context)
                                      .add(NavigationEvents.TemChartClickEvent);
                                },
                              ),
                              MenuItem(
                                icon: Icons.sensor_window,
                                title: 'Gas',
                                onTap: () {
                                  onIconPressed();
                                  BlocProvider.of<NavigationBloc>(context)
                                      .add(NavigationEvents.GasChartClickEvent);
                                },
                              ),
                              MenuItem(
                                icon: Icons.sensor_window,
                                title: 'Moisture Data',
                                onTap: () {
                                  onIconPressed();
                                  BlocProvider.of<NavigationBloc>(context).add(
                                      NavigationEvents.MoisChartClickEvent);
                                },
                              ),
                              MenuItem(
                                icon: Icons.sensor_window,
                                title: 'Nurtrirnt Data',
                                onTap: () {
                                  onIconPressed();
                                  BlocProvider.of<NavigationBloc>(context)
                                      .add(NavigationEvents.NurChartClickEvent);
                                },
                              ),
                              MenuItem(
                                icon: Icons.sensor_window,
                                title: 'Ph Sensor Data',
                                onTap: () {
                                  onIconPressed();
                                  BlocProvider.of<NavigationBloc>(context)
                                      .add(NavigationEvents.PhChartClickEvent);
                                },
                              ),
                            ],
                          ),
                        ),
                        MenuItem(
                          icon: Icons.device_hub,
                          title: 'Devices',
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.DevicesClickEvent);
                          },
                        ),
                        MenuItem(
                          icon: Icons.map,
                          title: 'Device Location',
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context).add(
                                NavigationEvents.DevicesLocationClickEvent);
                          },
                        ),
                        MenuItem(
                          icon: Icons.account_box,
                          title: 'Accounts',
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.AccountClickEvent);
                          },
                        ),
                        MenuItem(
                          icon: Icons.feedback,
                          title: 'Feedback',
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.DevicesClickEvent);
                          },
                        ),
                        Divider(
                          height: 64,
                          thickness: 0.5,
                          color: Colors.white.withOpacity(0.3),
                          // indent: 32,
                          // endIndent: 32,
                        ),
                        MenuItem(
                          icon: Icons.settings,
                          title: 'Settings',
                        ),
                        MenuItem(
                          icon: Icons.exit_to_app,
                          title: 'Logout',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: GestureDetector(
                  onTap: () {
                    onIconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      width: 35,
                      height: 110,
                      color: kOrangeColor,
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
