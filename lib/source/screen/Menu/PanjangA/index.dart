import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class PanjangA extends StatefulWidget {
  const PanjangA({Key? key}) : super(key: key);

  @override
  State<PanjangA> createState() => _PanjangAState();
}

class _PanjangAState extends State<PanjangA> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panjang A'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(GRADE);
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
                hintText: 'Panjang A',
              ),
              onEditingComplete: () {
                BlocProvider.of<TmCubit>(context).panjangA(controller.text);
                Navigator.pushReplacementNamed(context, PANJANGB);
              },
            ),
          ),
        ],
      ),
    );
  }
}
