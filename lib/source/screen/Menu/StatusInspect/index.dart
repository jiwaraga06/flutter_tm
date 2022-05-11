import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class StatusInspect extends StatefulWidget {
  const StatusInspect({Key? key}) : super(key: key);

  @override
  State<StatusInspect> createState() => _StatusInspectState();
}

class _StatusInspectState extends State<StatusInspect> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Status Inspect'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(PANJANGC);
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
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Masukan Status Inspect',
                border: OutlineInputBorder()
              ),
              onEditingComplete: () {
                BlocProvider.of<TmCubit>(context).statusInspect(controller.text);
                Navigator.pushReplacementNamed(context, CEK_DATA);
              },
            ),
          ),
        ],
      ),
    );
  }
}
