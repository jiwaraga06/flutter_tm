part of 'tm_cubit.dart';

@immutable
abstract class TmState {}

class TmInitial extends TmState {}

class TmSplashLoading extends TmState {}

class TmSplashLoaded extends TmState {}

class TmLoading extends TmState {}

class TmLoaded extends TmState {}

class TmMenu extends TmState {
  final String? codeOperator;
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
    required this.codeOperator,
  });
}

