import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tm/source/data/cubit/tm_cubit.dart';
import 'package:flutter_tm/source/router/string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controllerKode = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF61A4BC),
        title: Text('Login'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextFormField(
                      controller: controllerKode,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Please insert Operator Code',
                        prefixIcon: Icon(FontAwesomeIcons.userSecret),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill this column';
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextFormField(
                      controller: controllerPassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        hintText: 'Please insert Operator Password',
                        prefixIcon: Icon(FontAwesomeIcons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill this column';
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, REGISTER);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 4.0,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: const Color(0xFF5584AC))),
                    ),
                    child: const Text('REGISTER',
                        style: TextStyle(
                          color: Color(0xFF5584AC),
                        )),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(context, KAIN_GREIGE);
                        BlocProvider.of<TmCubit>(context).saveCodeOP(controllerKode.text);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 4.0,
                      primary: Color(0xFF5584AC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text('LOGIN'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
