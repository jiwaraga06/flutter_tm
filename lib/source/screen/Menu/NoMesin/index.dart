import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class NoMesin extends StatefulWidget {
  const NoMesin({Key? key}) : super(key: key);
  @override
  State<NoMesin> createState() => _NoMesinState();
}

class _NoMesinState extends State<NoMesin> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('No Mesin'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(LOT_PRODUKSI);
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
                hintText: 'Masukan Nama Mesin',
                border: OutlineInputBorder(),
              ),
              onEditingComplete: (){
                BlocProvider.of<TmCubit>(context).saveMesin(controller.text);
                Navigator.pushReplacementNamed(context, NO_BEAM);
              },
            ),
          ),
        ],
      ),
    );
  }
}
