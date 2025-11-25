import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/apis/api_result.dart';
import '../../../data/models/sign_up_request_body.dart';
import '../../../data/models/sign_up_response.dart';
import '../../../data/repos/sign_up_repo.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  void signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    emit(const SignUpState.signUpLoading());
    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
      ),
    );
    response.when(
      success: (SignUpResponse signUpResponse) {
        emit(SignUpState.signUpSuccess(signUpResponse));
      },
      failure: (error) {
        emit(SignUpState.signUpFailure(error));
      },
    );
  }
}
