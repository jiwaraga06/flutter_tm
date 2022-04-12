import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    //  SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarColor: Colors.white,
    //     statusBarIconBrightness: Brightness.dark,
    //   ),
    // );
    BlocProvider.of<TmCubit>(context).splash();
    return Scaffold(
      body: BlocListener<TmCubit, TmState>(
        listener: (context, state) {
          if(state is TmSplashLoaded){
            Navigator.pushReplacementNamed(context, LOGIN);
          }

        },
        child: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
            color: Color(0xFF61A4BC),
            size: 50,
          ),
        ),
      ),
    );
  }
}
