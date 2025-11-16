import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/repos/resend_otp_repo.dart';
import '../../features/auth/data/repos/sign_up_repo.dart';
import '../../features/auth/data/repos/verify_email_repo.dart';
import '../../features/auth/data/services/auth_service.dart';
import '../../features/auth/data/repos/login_repo.dart';
import '../../features/auth/ui/cubits/login_cubit/login_cubit.dart';
import '../../features/auth/ui/cubits/resend_otp_cubit/resend_otp_cubit.dart';
import '../../features/auth/ui/cubits/sign_up_cubit/sign_up_cubit.dart';
import '../../features/auth/ui/cubits/verify_email_cubit/verify_email_cubit.dart';
import '../apis/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiServices dependencies
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<AuthService>(() => AuthService(dio));

  // login dependencies
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<AuthService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  // sign up dependencies
  getIt.registerLazySingleton<SignUpRepo>(
    () => SignUpRepo(getIt<AuthService>()),
  );
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<SignUpRepo>()));

  // verify email dependencies
  getIt.registerLazySingleton<VerifyEmailRepo>(
    () => VerifyEmailRepo(getIt<AuthService>()),
  );
  getIt.registerFactory<VerifyEmailCubit>(
    () => VerifyEmailCubit(getIt<VerifyEmailRepo>()),
  );

  // resend otp dependencies
  getIt.registerLazySingleton<ResendOtpRepo>(
    () => ResendOtpRepo(getIt<AuthService>()),
  );
  getIt.registerFactory<ResendOtpCubit>(
    () => ResendOtpCubit(getIt<ResendOtpRepo>()),
  );
}
