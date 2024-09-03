

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


import '../../features/auth/presentation/auth_cubit/cubit_cubit.dart';
import '../../features/auth/presentation/views/ForgotPasswordView.dart';
import '../../features/auth/presentation/views/sign_in_view.dart';

import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/home/data/models/historical_charcters_model.dart';
import '../../features/home/data/models/historical_periods_model.dart';
import '../../features/home/data/models/historical_souvenirs_model.dart';
import '../../features/home/presentation/views/HistoricalCharctersDetailsView.dart';
import '../../features/home/presentation/views/HistoricalPeriodsDetailsView.dart';
import '../../features/home/presentation/views/HistoricalSouvenirsDetailsView.dart';
import '../../features/home/presentation/views/HomeView.dart';
import '../../features/home/presentation/widget/home_nav_bar_widget.dart';
import '../../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, stat) => SplashView(),
    ),
    GoRoute(
      path: "/onBoarding",
      builder: (context, state) => OnBoardingView(),
    ),
    GoRoute(
        path: "/SignUpView",
        builder: (context, state) => BlocProvider(
              create: (context) => AuthCubit(),
              child:  SignUpView(),
            )),
    GoRoute(
      path: "/Signinview",
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child:  Signinview(),
      ),
    ),
    GoRoute(
      path: "/forgotPassword",
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child:   ForgotPasswordView(),
      ),
    ),
    GoRoute(
      path: "/homeNavBar",
      builder: (context, state) => HomeNavBarWidget(),
    ),
    GoRoute(
        path: "/home",
        builder: (context, state) => HomeView(

        ),
    ),

    GoRoute(
      path: "/historicalPeriodsDetailsView",
      builder: (context, state) => HistoricalPeriodsDetailsView(
          model: state.extra as HistoricalPeriodsModel),
    ),
    GoRoute(
      path: "/HistoricalCharctersDetailsView",
      builder: (context, state) => Historicalcharctersdetailsview(
          model: state.extra as HistoricalCharctersModel,
        ),
    ),
    GoRoute(
      path: "/HistoricalSouvenirsDetailsView",
      builder: (context, state) => HistoricalSouvenirsDetailsView(
          models: state.extra as HistoricalSouvenirsModel
      ),
    ),
  ],
);


