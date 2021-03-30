import 'package:flutter/material.dart';
import 'package:vtreal/pages/add.enquete.page.dart';
import 'package:vtreal/pages/enquente.page.dart';
import 'package:vtreal/pages/enquetes.page.dart';
import 'package:vtreal/pages/home.page.dart';
import 'package:vtreal/pages/meus.votos.pages.dart';
import 'package:vtreal/pages/votar.enquente.page.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "VtReal",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: Login(),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => HomePage(),
        '/add-enquete': (context) => AddEnquentePage(),
        '/enquete': (context) => EnquentePage(),
        '/meus-votos': (context) => MeusVotosPage(),
        '/votar': (context) => VotarEnquentePage(),
        '/votacoes': (context) => VotacoesPage(),
      },
    );
  }
}
