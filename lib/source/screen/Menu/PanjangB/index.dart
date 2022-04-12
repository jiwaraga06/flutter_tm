import 'package:flutter/material.dart';

class PanjangB extends StatefulWidget {
  const PanjangB({ Key? key }) : super(key: key);

  @override
  State<PanjangB> createState() => _PanjangBState();
}

class _PanjangBState extends State<PanjangB> {
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
                hintText: 'Panjang B',
              ),
            ),
          ),
        ],
      ),
    );
  }
}