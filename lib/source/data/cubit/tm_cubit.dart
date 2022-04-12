import 'package:bloc/bloc.dart';
import 'package:flutter_tm/source/data/Repository/repository.dart';
import 'package:meta/meta.dart';
import 'package:device_info_plus/device_info_plus.dart';

part 'tm_state.dart';

class TmCubit extends Cubit<TmState> {
  final MyRepository? myRepository;

  TmCubit({this.myRepository}) : super(TmInitial());

  void splash() async {
    emit(TmSplashLoading());
    await Future.delayed(Duration(seconds: 2));
    emit(TmSplashLoaded());
  }

  void getUID() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    // return androidInfo.androidId;
    print(androidInfo.androidId.toString());
  }

  void kain(value) {
    emit(TmKain(kain: value));
  }

  void getMenu() {
    emit(TmMenu(menu: 0));
  }

  void onNext(menu) {
    emit(TmMenu(menu: menu++));
  }
}
