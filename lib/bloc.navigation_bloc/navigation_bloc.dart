import '/Pages/DeviceLocation/DeviceLocation.dart';

import '/Pages/Devices/DeviceLanding.dart';

import '../../LandingScreen/components/body.dart';
import '../../SensorScreen/charts/GasChart.dart';
import '../../SensorScreen/charts/HumChart.dart';
import '../../SensorScreen/charts/MoisChart.dart';
import '../../SensorScreen/charts/NurChart.dart';
import '../../SensorScreen/charts/PhChart.dart';
import '../../SensorScreen/charts/TemChart.dart';
import 'package:bloc/bloc.dart';

enum NavigationEvents {
  // DashboardClickEvent,
  LandingScreenBodyClickEvent,
  TemChartClickEvent,
  HumChartClickEvent,
  MoisChartClickEvent,
  PhChartClickEvent,
  NurChartClickEvent,
  GasChartClickEvent,
  DevicesClickEvent,
  DevicesLocationClickEvent,
  AccountClickEvent,
  SettingsClickEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc() : super(LandingScreenBody());

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.LandingScreenBodyClickEvent:
        yield LandingScreenBody();
        break;
      case NavigationEvents.TemChartClickEvent:
        yield TemChart();
        break;
      case NavigationEvents.HumChartClickEvent:
        yield HumChart();
        break;
      case NavigationEvents.MoisChartClickEvent:
        yield MoisChart();
        break;
      case NavigationEvents.PhChartClickEvent:
        yield PhChart();
        break;
      case NavigationEvents.NurChartClickEvent:
        yield NurChart();
        break;
      case NavigationEvents.GasChartClickEvent:
        yield GasChart();
        break;
      case NavigationEvents.DevicesClickEvent:
        yield DeviceLanding();
        break;
      case NavigationEvents.DevicesLocationClickEvent:
        yield DevicesLocation();
        break;
    }
  }
}
