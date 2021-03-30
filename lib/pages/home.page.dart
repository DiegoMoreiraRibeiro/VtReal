import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtreal/helpers/geral.helpers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Container(),
        drawer: menuLeft(context));
  }
}
