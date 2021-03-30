import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtreal/helpers/btn.helper.dart';
import 'package:vtreal/helpers/inputs.helper.dart';
import 'package:vtreal/helpers/list.item.helper.dart';

class AddEnquentePage extends StatefulWidget {
  @override
  _AddEnquentePageState createState() => _AddEnquentePageState();
}

class _AddEnquentePageState extends State<AddEnquentePage> {
  TextEditingController nomeController = new TextEditingController();
  TextEditingController descricaoController = new TextEditingController();
  var list = ['#CruVsCam', "#Eleiçoes2021"];
  // List<ListItemHelper> _dropdownItems = [];

  // List<DropdownMenuItem<ListItemHelper>> _dropdownMenuItems;
  // ListItemHelper _selectedItem;

  bool fim = false;
  void initState() {
    super.initState();
    // _dropdownItems = initListEstados();
    // _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    // _selectedItem = _dropdownMenuItems[0].value;
  }

  addEnquete() {}

  // initListEstados() {
  //   for (var i = 0; i < estadosCidades.length; i++) {
  //     _dropdownItems.add(ListItemHelper(
  //         estadosCidades[i]['sigla'], estadosCidades[i]['nome'].toString()));
  //   }
  //   return _dropdownItems;
  // }

  List<DropdownMenuItem<ListItemHelper>> buildDropDownMenuItems(
      List listItems) {
    List<DropdownMenuItem<ListItemHelper>> items = List();
    for (ListItemHelper listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Adicionar Enquete")),
      bottomSheet: submitButtonFooter(
        "Cadastrar",
        context,
        addEnquete(),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            inputTextField("Nome da Enquete", nomeController, "texto", true),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Text("Possui data para terminar?"),
                Container(
                    width: 100.0,
                    alignment: Alignment.topLeft,
                    child: Switch(
                        value: fim,
                        onChanged: (value) {
                          setState(() {
                            fim = value;
                          });
                        }))
              ],
            ),
            inputTextField("Descrição", descricaoController, "textarea", true),
          ],
        ),
      ),
    );
  }
}
