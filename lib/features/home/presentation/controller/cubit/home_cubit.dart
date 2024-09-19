import 'package:bloc/bloc.dart';
import 'package:clinic_system/features/home/data/model/doctor.dart';
import 'package:clinic_system/features/home/data/repos/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(const HomeState.initial()) {
    fetchData();
  }
  final HomeRepo homeRepo;
  late List<Category?>? catergoriesList;
  List<Doctor?>? doctorsList;
  int categorySelected = 0;
  bool isScrollMax = false;

  void fetchData() async {
    emit(const HomeState.loading());
    var response = await homeRepo.fetchData();
    response.when(
      sucess: (homerespose) {
        catergoriesList = homerespose.data;
        doctorsList = catergoriesList?[categorySelected]?.doctors ?? [];
        emit(HomeState.success(doctorsList));
      },
      failure: (apiErrorModel) {
        emit(HomeState.error(apiErrorModel));
      },
    );
  }

  changeCategory(int index) {
    categorySelected = index;
    doctorsList = catergoriesList?[categorySelected]?.doctors;
    isScrollMax = false;
    emit(HomeState.success(doctorsList));
  }

  moreData() async {
    emit(const HomeState.loading());
    await Future.delayed(const Duration(seconds: 1));
    doctorsList = List.from(doctorsList!)
      ..addAll(catergoriesList?[categorySelected]?.doctors ?? []);

    emit(HomeState.success(doctorsList));
  }
}
