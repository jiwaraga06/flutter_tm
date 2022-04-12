import 'package:flutter/material.dart';

class NoBeam extends StatefulWidget {
  const NoBeam({ Key? key }) : super(key: key);

  @override
  State<NoBeam> createState() => _NoBeamState();
}

class _NoBeamState extends State<NoBeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Masukan Nomor Beam',
              ),
            ),
          ),
        ],
      ),
    );
  }
}