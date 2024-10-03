import 'package:bloc/bloc.dart';
import 'package:clinic_system/core/theme/colors.dart';
import 'package:clinic_system/features/home/data/model/doctor.dart';
import 'package:clinic_system/features/home/data/repos/api/home_repo.dart';
import 'package:clinic_system/features/home/data/repos/local/home_local_data.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(const HomeState.initial()) {
    //checkConnectivity();
    listenToConnectivityChanges();
    fetchData();
  }
  final HomeRepo homeRepo;
  late List<Category?>? catergoriesList;
  List<Doctor?>? doctorsList;
  int categorySelected = 0;
  bool isScrollMax = false;

  ConnectivityResult? connectivityResult;
  void fetchData() async {
    emit(const HomeState.loading());
    HomeLocalData().cachimage();
    var response = await homeRepo.fetchData();
    response.when(
      sucess: (homerespose) {
        HomeLocalData().saveCategories(homerespose);
        catergoriesList = homerespose.data;
        doctorsList = catergoriesList?[categorySelected]?.doctors ?? [];
        emit(HomeState.success(doctorsList));
      },
      failure: (apiErrorModel) {
        if (apiErrorModel.message == "Connection to server failure") {
          catergoriesList = HomeLocalData().getCachedCategories();
          doctorsList = catergoriesList?[categorySelected]?.doctors ?? [];
          emit(HomeState.success(doctorsList));
        } else {
          emit(HomeState.error(apiErrorModel));
        }
      },
    );
  }

  void showSnackbar(BuildContext context, String text) {
    final snackBar = SnackBar(
      backgroundColor:
          text == "Disconnected" ? AppColors.black : AppColors.green,
      content: Text(text),
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {
          // Optionally do something when the user presses "OK"
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  changeCategory(int index) {
    categorySelected = index;
    doctorsList = catergoriesList?[categorySelected]?.doctors;
    isScrollMax = false;
    emit(HomeState.success(doctorsList));
  }

  void listenToConnectivityChanges() {
    Connectivity().onConnectivityChanged.listen((result) {
      if (result.contains(ConnectivityResult.none)) {
        connectivityResult = ConnectivityResult.none;
        emit(const HomeState.connectivityDisconnected());
      } else {
        if (connectivityResult != null) {
          emit(const HomeState.connectivityConnected());
        }
      }
    });
  }

  moreData() async {
    emit(const HomeState.loading());
    await Future.delayed(const Duration(seconds: 1));
    doctorsList = List.from(doctorsList!)
      ..addAll(catergoriesList?[categorySelected]?.doctors ?? []);

    emit(HomeState.success(doctorsList));
  }
}
