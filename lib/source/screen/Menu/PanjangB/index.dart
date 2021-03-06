import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';

class PanjangB extends StatefulWidget {
  const PanjangB({Key? key}) : super(key: key);

  @override
  State<PanjangB> createState() => _PanjangBState();
}

class _PanjangBState extends State<PanjangB> {
  TextEditingController controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Panjang B'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(PANJANGA);
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
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Panjang B',
                  border: OutlineInputBorder(),
                ),
                onEditingComplete: () {
                  if(formKey.currentState!.validate()){
                    BlocProvider.of<TmCubit>(context).panjangB(controller.text);
                  Navigator.pushReplacementNamed(context, PANJANGC);
                  }
                },
                validator: (value){
                  if(value == null || value.isEmpty){
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
