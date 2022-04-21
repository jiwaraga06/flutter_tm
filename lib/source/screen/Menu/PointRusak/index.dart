import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';

class PointRusak extends StatefulWidget {
  const PointRusak({Key? key}) : super(key: key);

  @override
  State<PointRusak> createState() => _PointRusakState();
}

class _PointRusakState extends State<PointRusak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLength: 1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Masukan Kode Point Rusak',
              ),
              onEditingComplete: () {
                
              },
            ),
          ),
        ],
      ),
    );
  }
}
