import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/apis/api_error_model.dart';
import '../../../../../core/apis/api_result.dart';

import '../../../data/models/verify_email_request_body.dart';
import '../../../data/models/verify_email_response.dart';
import '../../../data/repos/verify_email_repo.dart';
import 'verify_email_state.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailState> {
  final VerifyEmailRepo _verifyEmailRepo;
  VerifyEmailCubit(this._verifyEmailRepo)
    : super(const VerifyEmailState.initial());

  void verifyEmail({
    required String email,
    required String verificationCode,
  }) async {
    emit(const VerifyEmailState.verifyEmailLoading());
    final response = await _verifyEmailRepo.verifyEmail(
      VerifyEmailRequestBody(
        email: email,
        verificationCode: verificationCode,
      ),
    );
    response.when(
      success: (VerifyEmailResponse verifyEmailResponse) {
        emit(VerifyEmailState.verifyEmailSuccess(verifyEmailResponse));
      },
      failure: (error) {
        emit(VerifyEmailState.verifyEmailFailure(error));
      },
    );
  }
}
