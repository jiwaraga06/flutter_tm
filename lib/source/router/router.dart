import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/Network/network.dart';
import 'package:flutter_tm/source/data/Repository/repository.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';
import 'package:flutter_tm/source/screen/Auth/login.dart';
import 'package:flutter_tm/source/screen/Auth/register.dart';
import 'package:flutter_tm/source/screen/Dashboard/dashboard.dart';
import 'package:flutter_tm/source/screen/Menu/KainGreige/index.dart';
import 'package:flutter_tm/source/screen/Menu/LotProduksi/index.dart';
import 'package:flutter_tm/source/screen/SplashScreen/splash.dart';

class RouterNavigation {
  MyRepository? myRepository;
  RouterNavigation() {
    myRepository = MyRepository(network: Network());
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH_SCREEN:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const SplashScreen(),
                ));
      case REGISTER:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const Register(),
                ));
      case LOGIN:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const Login(),
                ));
      case DASHBOARD:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const Dashboard(),
                ));
      case KAIN_GREIGE:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const KainGreige(),
                ));
      case LOT_PRODUKSI:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const LotProduksi(),
                ));

      default:
        return null;
    }
  }
}
