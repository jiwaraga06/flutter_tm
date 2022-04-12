import 'package:flutter/material.dart';

class PointRusak extends StatefulWidget {
  const PointRusak({ Key? key }) : super(key: key);

  @override
  State<PointRusak> createState() => _PointRusakState();
}

class _PointRusakState extends State<PointRusak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLength: 1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Masukan Kode Point Rusak',
              ),
            ),
          ),
        ],
      ),
    );
  }
}