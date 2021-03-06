import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class LotProduksi extends StatefulWidget {
  const LotProduksi({Key? key}) : super(key: key);

  @override
  State<LotProduksi> createState() => _LotProduksiState();
}

class _LotProduksiState extends State<LotProduksi> {
  TextEditingController controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TmCubit>(context).getDataInsert();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lot Produksi'),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(KAIN_GREIGE);
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
                  decoration: const InputDecoration(
                    hintText: 'Masukan Kode',
                    border: OutlineInputBorder(),
                  ),
                  onEditingComplete: () {
                    if(formKey.currentState!.validate()){
                      BlocProvider.of<TmCubit>(context).saveLotProduksi(controller.text);
                    Navigator.pushReplacementNamed(context, NO_MESIN);
                    }
                  },
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please insert this column";
                    }
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
