part of 'water_level_cubit.dart';

@freezed
class WaterLevelState with _$WaterLevelState {
  const factory WaterLevelState({
    WaterLevelResponse? waterLevelResponse,
    required DateTime lastApiCall,
  }) = _WaterLevelSate;
}
