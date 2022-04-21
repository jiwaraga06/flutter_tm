import 'package:bloc/bloc.dart';
import 'package:flutter_tm/source/data/Repository/repository.dart';
import 'package:meta/meta.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  void kain(value) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('kain', value);
  }


  void getDataInsert() async {
    emit(TmLoading());
    SharedPreferences pref = await SharedPreferences.getInstance();
    var kain = pref.getString('kain');
    if(kain != null){
      emit(TmKain(kain: kain));
    }
  }
}
