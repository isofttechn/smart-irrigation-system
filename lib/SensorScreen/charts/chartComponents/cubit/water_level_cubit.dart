import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_level_state.dart';
part 'water_level_cubit.freezed.dart';

class WaterLevelCubit extends Cubit<WaterLevelState> {
  WaterLevelCubit() : super(WaterLevelState.initial());

  void fetchUsers() async {}
}
