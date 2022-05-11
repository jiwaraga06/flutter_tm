import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class PointRusak extends StatefulWidget {
  const PointRusak({Key? key}) : super(key: key);

  @override
  State<PointRusak> createState() => _PointRusakState();
}

class _PointRusakState extends State<PointRusak> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Point Rusak'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(LEBAR_KAIN);
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
                hintText: 'Masukan Kode Point Rusak',
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () {
                BlocProvider.of<TmCubit>(context).pointRusak(controller.text);
                Navigator.pushReplacementNamed(context, GRADE);
              },
            ),
          ),
        ],
      ),
    );
  }
}
