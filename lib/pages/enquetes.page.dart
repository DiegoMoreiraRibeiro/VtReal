import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtreal/helpers/geral.helpers.dart';
import 'package:vtreal/helpers/inputs.helper.dart';

class VotacoesPage extends StatefulWidget {
  @override
  _VotacoesPageState createState() => _VotacoesPageState();
}

class _VotacoesPageState extends State<VotacoesPage> {
  TextEditingController filtrarEnquete = new TextEditingController();
  var list = ['#CruVsCam', "#Eleiçoes2021"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Enquetes")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/add-enquete');
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              inputTextField("Filtrar", filtrarEnquete, "texto", true),
              for (var item in list) rowListaDeEnquetes(item, context),
            ],
          ),
        ),
        drawer: menuLeft(context));
  }
}
