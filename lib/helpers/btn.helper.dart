import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget submitButton(
    String txtBtn, BuildContext context, getData(BuildContext context)) {
  return RaisedButton(
    onPressed: () async {
      await getData(context);
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200.0)),
    padding: const EdgeInsets.all(0.0),
    child: Ink(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Colors.blueAccent,
            Colors.blueGrey,
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 88.0,
          minHeight: 44.0,
        ),
        alignment: Alignment.center,
        child: Text(
          txtBtn,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
      ),
    ),
  );
}

Widget submitButtonFooter(
    String txtBtn, BuildContext context, getData(BuildContext context)) {
  return RaisedButton(
    onPressed: () async {
      await getData(context);
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200.0)),
    padding: const EdgeInsets.all(0.0),
    child: Ink(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Colors.blueAccent,
            Colors.blueGrey,
          ],
        ),
      ),
      child: Container(
        constraints: const BoxConstraints(
            minWidth: 88.0, minHeight: 44.0, maxHeight: 44.0),
        alignment: Alignment.center,
        child: Text(
          txtBtn,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
      ),
    ),
  );
}

Widget facebookButton(
    String txtBtn, BuildContext context, getData(BuildContext context)) {
  return RaisedButton(
    onPressed: () {},
    color: Colors.blue,
    padding: const EdgeInsets.all(10.0),
    textColor: Colors.white,
    child: Row(
      children: <Widget>[
        Icon(
          FontAwesomeIcons.facebook,
          textDirection: TextDirection.ltr,
        ),
        SizedBox(
          width: 20.0,
        ),
        Text(
          txtBtn,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ],
    ),
  );
}

Widget googleButton(
    String txtBtn, BuildContext context, getData(BuildContext context)) {
  return RaisedButton(
    onPressed: () {},
    color: Colors.grey[100],
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: <Widget>[
        Icon(
          FontAwesomeIcons.google,
          textDirection: TextDirection.ltr,
          color: Colors.blue,
        ),
        SizedBox(
          width: 20.0,
        ),
        Text(
          txtBtn,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
      ],
    ),
  );
}
