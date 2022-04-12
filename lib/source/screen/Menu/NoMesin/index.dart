import 'package:flutter/material.dart';

class NoMesin extends StatefulWidget {
  const NoMesin({Key? key}) : super(key: key);

  @override
  State<NoMesin> createState() => _NoMesinState();
}

class _NoMesinState extends State<NoMesin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Masukan Nama Mesin',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
