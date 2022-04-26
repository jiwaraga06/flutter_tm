import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class LebarKain extends StatefulWidget {
  const LebarKain({Key? key}) : super(key: key);

  @override
  State<LebarKain> createState() => _LebarKainState();
}

class _LebarKainState extends State<LebarKain> {
  TextEditingController controllerS = TextEditingController();
  TextEditingController controllerW = TextEditingController();
  TextEditingController controllerL = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LEBAR KAIN'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(JENIS_OBAT);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text("S", style: TextStyle(fontSize: 17)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        controller: controllerS,
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text("W", style: TextStyle(fontSize: 17)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        controller: controllerW,
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text("L", style: TextStyle(fontSize: 17)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        controller: controllerL,
                        decoration: const InputDecoration(),
                        onEditingComplete: () {
                          BlocProvider.of<TmCubit>(context).lebarKain(controllerS.text, controllerW.text, controllerL.text);
                          Navigator.pushReplacementNamed(context, POINT_RUSAK);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
