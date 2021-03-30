import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtreal/pages/enquente.page.dart';

Widget menuLeft(context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Olá Diego',
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
              Text(
                'Seja bem-vindo!',
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text('Home'),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (_) => HomePage()),
            // );

            Navigator.pushNamed(context, '/home');
          },
        ),
        ListTile(
          title: Text('Meus Votos'),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => MeusVotosPage()),
            // );
            Navigator.pushNamed(context, '/meus-votos');
          },
        ),
        ListTile(
          title: Text('Enquetes'),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => VotacoesPage()),
            // );
            Navigator.pushNamed(context, '/votacoes');
          },
        ),
      ],
    ),
  );
}

Widget rowListaDeEnquetes(item, context) {
  return InkWell(
    onTap: () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => EnquentePage()));
    },
    child: Container(
      color: Colors.grey[100],
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.person,
                    size: 30.0,
                  )),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "#CamVSCru",
                style: TextStyle(fontSize: 18.0),
              ),
              Text("Criador: Diego")
            ],
          ),
        ],
      ),
    ),
  );
}
