import 'package:flutter/material.dart';

class PanjangA extends StatefulWidget {
  const PanjangA({ Key? key }) : super(key: key);

  @override
  State<PanjangA> createState() => _PanjangAState();
}

class _PanjangAState extends State<PanjangA> {
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
                hintText: 'Panjang A',
              ),
            ),
          ),
        ],
      ),
    );
  }
}