part of 'tm_cubit.dart';

@immutable
abstract class TmState {}

class TmInitial extends TmState {}

class TmSplashLoading extends TmState {}

class TmSplashLoaded extends TmState {}

class TmKain extends TmState {
  final String? kain;

  TmKain({required this.kain});
}

class TmMenu extends TmState {
  final int? menu;

  TmMenu({required this.menu});
}
