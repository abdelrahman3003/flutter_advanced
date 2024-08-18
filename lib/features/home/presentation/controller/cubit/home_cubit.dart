import 'package:bloc/bloc.dart';
import 'package:clinic_system/features/home/data/repos/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(const HomeState.initial()) {
    fetchData();
  }
  final HomeRepo homeRepo;

  void fetchData() async {
    emit(const HomeState.loading());
    var response = await homeRepo.fetchData();
    response.when(
        sucess: (categoreis) {
          emit(HomeState.success(categoreis));
        },
        failure: (errorHandler) => emit(
              HomeState.error(error: errorHandler.apiErrorModel.message ?? ""),
            ));
  }
}
