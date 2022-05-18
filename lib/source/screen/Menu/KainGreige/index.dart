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
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kain Greige'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: TextFormField(
                controller: controllerKode,
                maxLength: 4,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Masukan Kode',
                  border: OutlineInputBorder(),
                ),
                onEditingComplete: () {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<TmCubit>(context).savekain(controllerKode.text.toString());
                    Navigator.pushReplacementNamed(context, LOT_PRODUKSI);
                  }
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please insert this column";
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
