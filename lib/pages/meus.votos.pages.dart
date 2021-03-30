import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtreal/helpers/geral.helpers.dart';

class MeusVotosPage extends StatefulWidget {
  @override
  _MeusVotosPageState createState() => _MeusVotosPageState();
}

class _MeusVotosPageState extends State<MeusVotosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Meus Votos")),
        body: Container(),
        drawer: menuLeft(context));
  }
}
