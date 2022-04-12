import 'package:flutter/material.dart';

class JenisObat extends StatefulWidget {
  const JenisObat({Key? key}) : super(key: key);

  @override
  State<JenisObat> createState() => _JenisObatState();
}

class _JenisObatState extends State<JenisObat> {
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
                hintText: 'Masukan Jenis Obat',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
