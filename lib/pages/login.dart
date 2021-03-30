import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vtreal/helpers/btn.helper.dart';
import 'package:vtreal/helpers/inputs.helper.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  Future login(BuildContext context) async {
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 60, left: 20, right: 20),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Icon(
                    FontAwesomeIcons.checkCircle,
                    size: 100.0,
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  inputTextField("Email", emailController, "email", true),
                  inputTextField("Senha", senhaController, "senha", true),
                  submitButton("Entrar", context, login),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(color: Colors.black),
                  SizedBox(
                    height: 10.0,
                  ),
                  facebookButton("Facebook", context, login),
                  googleButton("Google", context, login),
                ],
              ))
        ],
      ),
    ));
  }
}
