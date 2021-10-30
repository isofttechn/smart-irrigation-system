import 'package:api_example_app/Pages/DeviceLocation/DeviceLocation.dart';
import 'package:api_example_app/Pages/Devices/DeviceLanding.dart';
import 'package:api_example_app/SensorScreen/charts/GasChart.dart';
import 'package:api_example_app/SensorScreen/charts/HumChart.dart';
import 'package:api_example_app/SensorScreen/charts/MoisChart.dart';
import 'package:api_example_app/SensorScreen/charts/NurChart.dart';
import 'package:api_example_app/SensorScreen/charts/PhChart.dart';
import 'package:api_example_app/SensorScreen/charts/TemChart.dart';
import 'package:bloc/bloc.dart';

import '../../LandingScreen/components/body.dart';

abstract class NavigationEvents {}

// DashboardClickEvent,
class LandingScreenBodyClickEvent extends NavigationEvents {}

class TemChartClickEvent extends NavigationEvents {}

class HumChartClickEvent extends NavigationEvents {}

class MoisChartClickEvent extends NavigationEvents {}

class PhChartClickEvent extends NavigationEvents {}

class NurChartClickEvent extends NavigationEvents {}

class GasChartClickEvent extends NavigationEvents {}

class DevicesClickEvent extends NavigationEvents {}

class DevicesLocationClickEvent extends NavigationEvents {}

class AccountClickEvent extends NavigationEvents {}

class SettingsClickEvent extends NavigationEvents {}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc() : super(LandingScreenBody()) {
    on<LandingScreenBodyClickEvent>((event, emit) => LandingScreenBody());
    on<TemChartClickEvent>((event, emit) => TemChart());
    on<HumChartClickEvent>((event, emit) => HumChart());
    on<MoisChartClickEvent>((event, emit) => MoisChart());
    on<PhChartClickEvent>((event, emit) => PhChart());
    on<NurChartClickEvent>((event, emit) => NurChart());
    on<GasChartClickEvent>((event, emit) => GasChart());
    on<DevicesClickEvent>((event, emit) => DeviceLanding());
    on<DevicesLocationClickEvent>((event, emit) => DevicesLocation());
  }
}
