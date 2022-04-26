part of 'tm_cubit.dart';

@immutable
abstract class TmState {}

class TmInitial extends TmState {}

class TmSplashLoading extends TmState {}

class TmSplashLoaded extends TmState {}

class TmLoading extends TmState {}
class TmLoaded extends TmState {}

class TmKain extends TmState {
  final String? kain;

  TmKain({this.kain});
}

class TmLotProduksi extends TmState {
  final String? lotProduksi;

  TmLotProduksi({this.lotProduksi});
}

class TmMesin extends TmState {
  final String? mesin;

  TmMesin({this.mesin});
}

class TmBeam extends TmState {
  final String? beam;

  TmBeam({this.beam});
}

class TmJenisObat extends TmState {
  final String? obat;

  TmJenisObat({this.obat});
}

class TMLebarKain extends TmState {
  final String? sKain;
  final String? wKain;
  final String? lKain;

  TMLebarKain({this.sKain, this.wKain, this.lKain});
}

class TMPointRusak extends TmState {
  final String? point;

  TMPointRusak({this.point});
}

class TMGrade extends TmState {
  final String? grade;

  TMGrade({this.grade});
}

class TMPanjangA extends TmState {
  final String? panjangA;

  TMPanjangA({this.panjangA});
}

class TMPanjangB extends TmState {
  final String? panjangB;

  TMPanjangB({this.panjangB});
}

class TMPanjangC extends TmState {
  final String? panjangC;

  TMPanjangC({this.panjangC});
}

class TMStatusInspect extends TmState {
  final String? status;

  TMStatusInspect({this.status});
}
