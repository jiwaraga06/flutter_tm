import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class JenisObat extends StatefulWidget {
  const JenisObat({Key? key}) : super(key: key);

  @override
  State<JenisObat> createState() => _JenisObatState();
}

class _JenisObatState extends State<JenisObat> {
  TextEditingController controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JENIS OBAT'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(NO_BEAM);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: TextFormField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Masukan Jenis Obat',
                  border: OutlineInputBorder(),
                ),
                onEditingComplete: () {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<TmCubit>(context).jenisObat(controller.text);
                    Navigator.pushReplacementNamed(context, LEBAR_KAIN);
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
