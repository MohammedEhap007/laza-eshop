import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/apis/api_result.dart';
import '../../../data/models/resend_otp_request_body.dart';
import '../../../data/models/resend_otp_response.dart';
import '../../../data/repos/resend_otp_repo.dart';
import 'resend_otp_state.dart';

class ResendOtpCubit extends Cubit<ResendOtpState> {
  final ResendOtpRepo resendOtpRepo;
  ResendOtpCubit(this.resendOtpRepo) : super(const ResendOtpState.initial());

  void resendOtp({required String email}) async {
    emit(const ResendOtpState.resendOtpLoading());
    final response = await resendOtpRepo.resendOtp(
      ResendOtpRequestBody(email: email),
    );
    response.when(
      success: (ResendOtpResponse resendOtpResponse) {
        emit(ResendOtpState.resendOtpSuccess(resendOtpResponse));
      },
      failure: (error) {
        emit(ResendOtpState.resendOtpFailure(error));
      },
    );
  }
}
