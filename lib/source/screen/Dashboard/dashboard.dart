import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
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

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  final List<Widget> body = <Widget>[
    const KainGreige(),
    const LotProduksi(),
    const NoMesin(),
    const NoBeam(),
    const JenisObat(),
    const LebarKain(),
    const PointRusak(),
    const Grade(),
    const PanjangA(),
    const PanjangB(),
    const PanjangC(),
    const StatusInspect(),
  ];
  final List<String> judul = <String>[
    "Kain Greige",
    "Lot Produksi",
    "No Mesin",
    "No Beam",
    "Jenis Obat",
    "Lebar Kain",
    "Point Rusak",
    "Grade",
    "Panjang A",
    "Panjang B",
    "Panjang C",
    "Status Inspect",
  ];
  void onNext() {
    if (currentIndex != 11) {
      setState(() {
        currentIndex = currentIndex + 1;
      });
    } else if (currentIndex == 11) {
      print('gak bisa next lagi');
    }
  }

  void onBack() {
    if (currentIndex != 0) {
      setState(() {
        currentIndex = currentIndex - 1;
      });
    } else {
      print('gak bisa back lagi');
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF61A4BC),
        ),
        body: body[currentIndex]);
  }
}
