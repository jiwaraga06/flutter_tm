import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class KainGreige extends StatefulWidget {
  const KainGreige({Key? key}) : super(key: key);

  @override
  State<KainGreige> createState() => _KainGreigeState();
}

class _KainGreigeState extends State<KainGreige> {
  TextEditingController controllerKode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Kain'),
      // ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controllerKode,
              maxLength: 4,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Masukan Kode',
              ),
              onEditingComplete: () {
                Navigator.pushNamed(context, LOT_PRODUKSI);
                // BlocProvider.of<TmCubit>(context).kain(controllerKode.text);
              },
              onChanged: (value) {
                BlocProvider.of<TmCubit>(context).kain(value.toString());
              },
            ),
          ),
          IconButton(
                  onPressed: () {
                    BlocProvider.of<TmCubit>(context).onNext(1);
                  },
                  icon: Icon(Icons.arrow_forward_outlined)),
        ],
      ),
    );
  }
}
