import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/Network/network.dart';
import 'package:flutter_tm/source/data/Repository/repository.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';
import 'package:flutter_tm/source/screen/Auth/login.dart';
import 'package:flutter_tm/source/screen/Auth/register.dart';
import 'package:flutter_tm/source/screen/CekData/index.dart';
import 'package:flutter_tm/source/screen/Dashboard/dashboard.dart';
import 'package:flutter_tm/source/screen/Menu/Grade/index.dart';
import 'package:flutter_tm/source/screen/Menu/JenisObat/index.dart';
import 'package:flutter_tm/source/screen/Menu/KainGreige/index.dart';
import 'package:flutter_tm/source/screen/Menu/LebarKain/index.dart';
import 'package:flutter_tm/source/screen/Menu/LotProduksi/index.dart';
import 'package:flutter_tm/source/screen/Menu/NoBeam/index.dart';
import 'package:flutter_tm/source/screen/Menu/NoMesin/index.dart';
import 'package:flutter_tm/source/screen/Menu/PanjangA/index.dart';
import 'package:flutter_tm/source/screen/Menu/PanjangB/index.dart';
import 'package:flutter_tm/source/screen/Menu/PanjangC/index.dart';
import 'package:flutter_tm/source/screen/Menu/PointRusak/index.dart';
import 'package:flutter_tm/source/screen/Menu/StatusInspect/index.dart';
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
      case NO_MESIN:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const NoMesin(),
                ));
      case NO_BEAM:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const NoBeam(),
                ));
      case JENIS_OBAT:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const JenisObat(),
                ));
      case LEBAR_KAIN:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const LebarKain(),
                ));
      case POINT_RUSAK:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const PointRusak(),
                ));
      case GRADE:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const Grade(),
                ));
      case PANJANGA:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const PanjangA(),
                ));
      case PANJANGB:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const PanjangB(),
                ));
      case PANJANGC:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const PanjangC(),
                ));
      case STATUS_INSPECT:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const StatusInspect(),
                ));
      case CEK_DATA:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TmCubit(
                    myRepository: myRepository,
                  ),
                  child: const CekData(),
                ));

      default:
        return null;
    }
  }
}
