import 'dart:async';

import 'package:api_example_app/SensorScreen/charts/chartComponents/service/water_level_service.dart';
import 'package:api_example_app/SensorScreen/charts/model/water_level_response.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_level_state.dart';
part 'water_level_cubit.freezed.dart';

class WaterLevelCubit extends Cubit<WaterLevelState> {
  WaterLevelCubit({required this.waterLevelService}) : super(WaterLevelState());

  final WaterLevelService waterLevelService;

  void fetchWaterLevel() async {
    Timer.periodic(Duration(seconds: 15), (timer) async {
      final response = await waterLevelService.fetchWaterLevel();

      emit(state.copyWith(waterLevelResponse: response));
    });
  }
}
