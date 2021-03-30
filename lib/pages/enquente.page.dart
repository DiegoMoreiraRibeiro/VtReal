import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtreal/pages/enquetes.page.dart';

class EnquentePage extends StatefulWidget {
  @override
  _EnquentePageState createState() => _EnquentePageState();
}

class _EnquentePageState extends State<EnquentePage> {
  participarEnquente() {
    Navigator.pushNamed(context, '/votar');
  }

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TESTE"),
        leading: new IconButton(
            icon: new Icon(Icons.ac_unit),
            onPressed: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => VotacoesPage()))),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[],
        ),
      ),
    );
  }
}
