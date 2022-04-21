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
            BlocBuilder<TmCubit, TmState>(
              builder: (context, state) {
                if (state is TmLoading) {
                  return const Text('loading');
                }
                var kain = (state as TmKain).kain;
                if (kain!.isEmpty) {
                  return const Text("kainss");
                }
                return Text(kain);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukan Kode',
                ),
                onEditingComplete: () {
                  Navigator.pushReplacementNamed(context, NO_MESIN);
                },
              ),
            ),
          ],
        ));
  }
}
