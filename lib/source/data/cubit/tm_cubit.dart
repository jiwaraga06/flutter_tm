import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
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
    await Future.delayed(const Duration(seconds: 2));
    emit(TmSplashLoaded());
  }

  void getUID() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    // return androidInfo.androidId;
    print(androidInfo.androidId.toString());
  }

  void getDataInsert() async {
    emit(TmLoading());
    await Future.delayed(const Duration(seconds: 2));
    SharedPreferences pref = await SharedPreferences.getInstance();
    var kain = pref.getString('kain');
    var lotProduksi = pref.getString('lotProduksi');
    var mesin = pref.getString('mesin');
    var beam = pref.getString('beam');
    var obat = pref.getString('obat');
    var sKain = pref.getString('s_Kain');
    var wKain = pref.getString('w_Kain');
    var lKain = pref.getString('l_Kain');
    emit(TmLoaded());
    if (kain != null) {
      emit(TmKain(kain: kain));
    }
    if (lotProduksi != null) {
      emit(TmLotProduksi(lotProduksi: lotProduksi));
    }
    if (mesin != null) {
      emit(TmMesin(mesin: mesin));
    }
    if (beam != null) {
      emit(TmBeam(beam: beam));
    }
    if (obat != null) {
      emit(TmKain(kain: kain));
    }
    if (lKain != null) {
      emit(TMLebarKain(sKain: sKain, wKain: wKain, lKain: lKain));
    }
  }

  void savekain(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('kain', value);
  }

  void saveLotProduksi(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('lotProduksi', value);
  }

  void saveMesin(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('mesin', value);
  }

  void saveBeam(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('beam', value);
  }

  void jenisObat(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('obat', value);
  }

  void lebarKain(valueS, valueW, valueL) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('S_kain', valueS);
    pref.setString('W_kain', valueW);
    pref.setString('L_kain', valueL);
  }

  void pointRusak(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('point', value);
  }

  void grade(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('grade', value);
  }

  void panjangA(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('panjangA', value);
  }

  void panjangB(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('panjangB', value);
  }

  void panjangC(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('panjangC', value);
  }

  void statusInspect(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('statusInspect', value);
  }
}
