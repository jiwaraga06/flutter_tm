import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';

class NoBeam extends StatefulWidget {
  const NoBeam({Key? key}) : super(key: key);

  @override
  State<NoBeam> createState() => _NoBeamState();
}

class _NoBeamState extends State<NoBeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Masukan Nomor Beam',
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
