import 'dart:async';

import 'package:api_example_app/SensorScreen/charts/chartComponents/service/water_level_service.dart';
import 'package:api_example_app/SensorScreen/charts/model/feed.dart';
import 'package:api_example_app/SensorScreen/charts/model/water_level_response.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_level_state.dart';
part 'water_level_cubit.freezed.dart';

class WaterLevelCubit extends Cubit<WaterLevelState> {
  WaterLevelCubit({required this.waterLevelService})
      : super(
          WaterLevelState(
            lastApiCall: DateTime.now(),
            isLoaded: false,
          ),
        );

  final WaterLevelService waterLevelService;

  void startTimer() {
    Timer.periodic(Duration(seconds: 15), (timer) async => fetchWaterLevel());
  }

  void fetchWaterLevel() async {
    final response = await waterLevelService.fetchWaterLevel();

    if (state.selectedFeed == null) {
      updateTank(response.feeds.last);
    }

    emit(
      state.copyWith(
        waterLevelResponse: response,
        lastApiCall: DateTime.now(),
      ),
    );

    if (!state.isLoaded) {
      emit(state.copyWith(isLoaded: true));
    }
  }

  void updateTank(Feed feed) {
    emit(state.copyWith(selectedFeed: feed));
  }
}
