import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:vtreal/helpers/btn.helper.dart';

class VotarEnquentePage extends StatefulWidget {
  @override
  _VotarEnquentePageState createState() => _VotarEnquentePageState();
}

class _VotarEnquentePageState extends State<VotarEnquentePage> {
  bool fim = false;
  void initState() {
    super.initState();
  }

  teste() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Votar")),
      bottomSheet: submitButtonFooter(
        "Participar da Enquete",
        context,
        teste(),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "#CamVSCru",
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Autor: Diego",
                  style: TextStyle(fontSize: 15.0),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text("Cruzeiro"),
                Container(
                  child: new LinearPercentIndicator(
                    lineHeight: 20.0,
                    percent: 0.5,
                    center: Text(
                      "50.0%",
                      style: new TextStyle(fontSize: 12.0),
                    ),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    backgroundColor: Colors.grey[400],
                    progressColor: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text("Atletico"),
                Container(
                  child: new LinearPercentIndicator(
                    lineHeight: 20.0,
                    percent: 0.5,
                    center: Text(
                      "50.0%",
                      style: new TextStyle(fontSize: 12.0),
                    ),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    backgroundColor: Colors.grey[400],
                    progressColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
