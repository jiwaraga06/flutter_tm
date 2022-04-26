import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class PanjangC extends StatefulWidget {
  const PanjangC({Key? key}) : super(key: key);

  @override
  State<PanjangC> createState() => _PanjangCState();
}

class _PanjangCState extends State<PanjangC> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panjang C'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(PANJANGB);
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
                hintText: 'Panjang C',
              ),
              onEditingComplete: () {
                BlocProvider.of<TmCubit>(context).panjangC(controller.text);
                Navigator.pushReplacementNamed(context, CEK_DATA);
              },
            ),
          ),
        ],
      ),
    );
  }
}
