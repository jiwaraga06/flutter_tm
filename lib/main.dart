import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tm/source/router/router.dart';
import 'package:flutter_tm/source/screen/SplashScreen/splash.dart';

void main() {
  runApp(MyApp(
    router: RouterNavigation(),
  ));
}

class MyApp extends StatelessWidget {
  // router navigasi
  final RouterNavigation? router;
  const MyApp({Key? key, this.router}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarColor: Colors.white,
    //     statusBarIconBrightness: Brightness.dark,
    //   ),
    // );
    return MaterialApp(
      title: 'Flutter TM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(primary:const Color(0xFF8FBDD3)),
      ),
      // router navigasi
      onGenerateRoute: router!.generateRoute,
      // home: const SplashScreen(),
    );
  }
}
