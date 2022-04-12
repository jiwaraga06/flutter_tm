import 'package:flutter/material.dart';

class PanjangC extends StatefulWidget {
  const PanjangC({ Key? key }) : super(key: key);

  @override
  State<PanjangC> createState() => _PanjangCState();
}

class _PanjangCState extends State<PanjangC> {
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
                hintText: 'Panjang C',
              ),
            ),
          ),
        ],
      ),
    );
  }
}