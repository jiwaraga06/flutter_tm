import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class CekData extends StatefulWidget {
  const CekData({Key? key}) : super(key: key);

  @override
  State<CekData> createState() => _CekDataState();
}

class _CekDataState extends State<CekData> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TmCubit>(context).getDataInsert();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verifikasi Data'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(STATUS_INSPECT);
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
              // var kain = (state as TmKain).kain;
              // if (kain!.isEmpty) {
              //   return const Text("kainss");
              // }
              return Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      // Text(kain),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 12.0),
                        child: Text('Data Hasil Inputan', textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
                      ),
                      Table(
                        border: TableBorder.all(color: Colors.transparent),
                        columnWidths: const {
                          0: FixedColumnWidth(140.0),
                          1: FixedColumnWidth(15.0),
                        },
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Kain', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Kain', style: TextStyle(fontSize: 17)),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Lot Produksi', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Lot Produksi', style: TextStyle(fontSize: 17)),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Nomor Mesin', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Nomor Mesin', style: TextStyle(fontSize: 17)),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Nomor Beam', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Nomor Beam', style: TextStyle(fontSize: 17)),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Jenis Obat', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Jenis Obat', style: TextStyle(fontSize: 17)),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Lebar Kain', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Lebar Kain S=S;', style: TextStyle(fontSize: 17)),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Point Rusak', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Point Rusak', style: TextStyle(fontSize: 17)),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Grade', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Grade', style: TextStyle(fontSize: 17)),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Panjang A', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Panjang A', style: TextStyle(fontSize: 17)),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Panjang B', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Panjang B', style: TextStyle(fontSize: 17)),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Panjang C', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Panjang C', style: TextStyle(fontSize: 17)),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Status Inspect', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            ),
                            Text(':', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                            Text('Status Inspect', style: TextStyle(fontSize: 17)),
                          ]),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed(POINT_RUSAK);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue[700],
                                fixedSize: const Size.fromHeight(35),
                              ),
                              child: const Text('Kembali ke Point Rusak'),
                            ),
                            const SizedBox(width: 10.0),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green[700],
                                fixedSize: const Size.fromHeight(35),
                              ),
                              child: const Text('SIMPAN'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ));
            },
          ),
        ],
      ),
    );
  }
}
