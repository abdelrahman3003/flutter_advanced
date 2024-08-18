import 'package:bloc/bloc.dart';
import 'package:clinic_system/features/home/data/model/doctor.dart';
import 'package:clinic_system/features/home/data/repos/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(const HomeState.initial()) {
    fetchData();
  }
  final HomeRepo homeRepo;
  Catergories? dcatergories;
  void fetchData() async {
    emit(const HomeState.loading());
    var response = await homeRepo.fetchData();
    response.when(
        sucess: (catergories) {
          dcatergories = catergories;
          emit(HomeState.success(catergories, 0));
        },
        failure: (errorHandler) => emit(
              HomeState.error(error: errorHandler.apiErrorModel.message ?? ""),
            ));
  }

  changeCategory(int index) {
    emit(HomeState.success(dcatergories!, index));
  }
}
