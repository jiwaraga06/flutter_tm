import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class NoBeam extends StatefulWidget {
  const NoBeam({Key? key}) : super(key: key);

  @override
  State<NoBeam> createState() => _NoBeamState();
}

class _NoBeamState extends State<NoBeam> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('No Beam'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(NO_MESIN);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Masukan Nomor Beam',
              ),
              onEditingComplete: () {
                BlocProvider.of<TmCubit>(context).saveBeam(controller.text);
                Navigator.pushReplacementNamed(context, JENIS_OBAT);
              },
            ),
          ),
        ],
      ),
    );
  }
}
