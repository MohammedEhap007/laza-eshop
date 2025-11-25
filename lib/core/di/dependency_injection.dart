import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/services/home_service.dart';

import '../../features/auth/data/repos/resend_otp_repo.dart';
import '../../features/auth/data/repos/sign_up_repo.dart';
import '../../features/auth/data/repos/verify_email_repo.dart';
import '../../features/auth/data/services/auth_service.dart';
import '../../features/auth/data/repos/login_repo.dart';
import '../../features/auth/ui/cubits/login_cubit/login_cubit.dart';
import '../../features/auth/ui/cubits/resend_otp_cubit/resend_otp_cubit.dart';
import '../../features/auth/ui/cubits/sign_up_cubit/sign_up_cubit.dart';
import '../../features/auth/ui/cubits/verify_email_cubit/verify_email_cubit.dart';
import '../../features/home/data/repos/categories_repo.dart';
import '../../features/home/data/repos/products_repo.dart';
import '../../features/home/ui/cubits/categories_cubit/categories_cubit.dart';
import '../../features/home/ui/cubits/products_cubit/products_cubit.dart';
import '../apis/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & AuthService dependencies

  // Create Dio instance first WITHOUT interceptors
  Dio dio = DioFactory.getDioWithoutInterceptors();
  getIt.registerLazySingleton<AuthService>(() => AuthService(dio));
  // Now add interceptors after AuthService is registered
  DioFactory.addDioInterceptor();

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

  // HomeService dependencies
  getIt.registerLazySingleton<HomeService>(
    () => HomeService(DioFactory.getDio()),
  );

  // categories dependencies
  getIt.registerLazySingleton<CategoriesRepo>(
    () => CategoriesRepo(getIt<HomeService>()),
  );
  getIt.registerFactory<CategoriesCubit>(
    () => CategoriesCubit(getIt<CategoriesRepo>()),
  );

  // products dependencies
  getIt.registerLazySingleton<ProductsRepo>(
    () => ProductsRepo(getIt<HomeService>()),
  );
  getIt.registerFactory<ProductsCubit>(
    () => ProductsCubit(getIt<ProductsRepo>()),
  );
}
