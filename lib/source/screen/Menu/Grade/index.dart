import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class Grade extends StatefulWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  State<Grade> createState() => _GradeState();
}

class _GradeState extends State<Grade> {
  TextEditingController controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grade'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(POINT_RUSAK);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: TextFormField(
                controller: controller,
                maxLength: 1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Masukan Grade',
                ),
                onEditingComplete: () {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<TmCubit>(context).grade(controller.text);
                    Navigator.pushReplacementNamed(context, PANJANGA);
                  }
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please insert this column";
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
