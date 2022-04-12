import 'package:flutter/material.dart';

class Grade extends StatefulWidget {
  const Grade({ Key? key }) : super(key: key);

  @override
  State<Grade> createState() => _GradeState();
}

class _GradeState extends State<Grade> {
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
                hintText: 'Masukan Grade',
              ),
            ),
          ),
        ],
      ),
    );
  }
}