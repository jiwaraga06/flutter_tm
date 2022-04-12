import 'package:flutter/material.dart';

class StatusInspect extends StatefulWidget {
  const StatusInspect({ Key? key }) : super(key: key);

  @override
  State<StatusInspect> createState() => _StatusInspectState();
}

class _StatusInspectState extends State<StatusInspect> {
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