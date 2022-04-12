import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController controllerKode = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TmCubit>(context).getUID();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF61A4BC),
        title: Text('Register'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextFormField(
                    controller: controllerKode,
                    decoration: InputDecoration(
                      hintText: 'Please insert Code',
                      prefixIcon: Icon(FontAwesomeIcons.userSecret),
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextFormField(
                    controller: controllerPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Please insert Password',
                      prefixIcon: Icon(FontAwesomeIcons.lock),
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 4.0,
                  primary: Color(0xFF5584AC),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: const Color(0xFF5584AC))),
                ),
                child: const Text('REGISTER'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
