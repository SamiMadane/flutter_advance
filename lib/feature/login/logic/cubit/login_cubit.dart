import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/constants.dart';
import 'package:flutter_advance/core/helpers/shared_pref_helper.dart';
import 'package:flutter_advance/core/networking/api_error_model.dart';
import 'package:flutter_advance/core/networking/dio_factory.dart';
import 'package:flutter_advance/feature/login/data/models/login_request_body.dart';
import 'package:flutter_advance/feature/login/data/repository/login_repo.dart';
import 'package:flutter_advance/feature/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// LoginCubit depends on LoginRepo
class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        await saveUserToken(loginResponse.userData?.token ?? '');
        emit(LoginState.loginSuccess(loginResponse));
      },
      failure: (apiErrorModel) {
        emit(LoginState.loginError(apiErrorModel));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
