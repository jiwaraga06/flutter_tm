import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';

class LotProduksi extends StatefulWidget {
  const LotProduksi({Key? key}) : super(key: key);

  @override
  State<LotProduksi> createState() => _LotProduksiState();
}

class _LotProduksiState extends State<LotProduksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Lot'),
        // ),
        body: ListView(
          children: [
            BlocBuilder<TmCubit, TmState>(
              builder: (context, state) {
                if (state is TmKain) {
                  return Text(state.kain!);
                }
                return Text("kain");
              },
            ),
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukan Kode',
                ),
              ),
            ),
          ],
        ));
  }
}
