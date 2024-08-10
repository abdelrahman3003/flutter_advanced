import 'package:bloc/bloc.dart';
import 'package:clinic_system/features/auth/signIn/data/model/login_requset_body.dart';
import 'package:clinic_system/features/auth/signIn/data/repos/login_repo.dart';
import 'package:clinic_system/features/auth/signIn/presentation/controller/cubit/login_state.dart';



class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  void emitLoginStates(LoginRequsetBody loginRequsetBody) async {
    emit(const LoginState.loading());
    var response = await loginRepo.login(loginRequsetBody);
    response.when(
      sucess: (data) {
        LoginState.success(data);
      },
      failure: (errorHandler) =>
          LoginState.error(error: errorHandler.apiErrorModel.message ?? ""),
    );
  }
}
