part of 'tm_cubit.dart';

@immutable
abstract class TmState {}

class TmInitial extends TmState {}

class TmSplashLoading extends TmState {}

class TmSplashLoaded extends TmState {}

class TmLoading extends TmState {}

class TmLoaded extends TmState {}

class TmMenu extends TmState {
  final String? kain;
  final String? lotProduksi;
  final String? mesin;
  final String? beam;
  final String? obat;
  final String? sKain;
  final String? wKain;
  final String? lKain;
  final String? pointRusak;
  final String? grade;
  final String? panjangA;
  final String? panjangB;
  final String? panjangC;
  final String? statusInspect;

  TmMenu({
    required this.kain,
    required this.lotProduksi,
    required this.mesin,
    required this.beam,
    required this.obat,
    required this.sKain,
    required this.wKain,
    required this.lKain,
    required this.pointRusak,
    required this.grade,
    required this.panjangA,
    required this.panjangB,
    required this.panjangC,
    required this.statusInspect,
  });
}

// class TmKain extends TmState {
//   final String? kain;

//   TmKain({this.kain});
// }

// class TmLotProduksi extends TmState {
//   final String? lotProduksi;

//   TmLotProduksi({this.lotProduksi});
// }

// class TmMesin extends TmState {
//   final String? mesin;

//   TmMesin({this.mesin});
// }

// class TmBeam extends TmState {
//   final String? beam;

//   TmBeam({this.beam});
// }

// class TmJenisObat extends TmState {
//   final String? obat;

//   TmJenisObat({this.obat});
// }

// class TMLebarKain extends TmState {
//   final String? sKain;
//   final String? wKain;
//   final String? lKain;

//   TMLebarKain({this.sKain, this.wKain, this.lKain});
// }

// class TMPointRusak extends TmState {
//   final String? point;

//   TMPointRusak({this.point});
// }

// class TMGrade extends TmState {
//   final String? grade;

//   TMGrade({this.grade});
// }

// class TMPanjangA extends TmState {
//   final String? panjangA;

//   TMPanjangA({this.panjangA});
// }

// class TMPanjangB extends TmState {
//   final String? panjangB;

//   TMPanjangB({this.panjangB});
// }

// class TMPanjangC extends TmState {
//   final String? panjangC;

//   TMPanjangC({this.panjangC});
// }

// class TMStatusInspect extends TmState {
//   final String? status;

//   TMStatusInspect({this.status});
// }
