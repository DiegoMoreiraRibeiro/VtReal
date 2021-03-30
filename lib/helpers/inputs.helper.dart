import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:intl/intl.dart';

import 'list.item.helper.dart';

Widget inputSelect(_dropdownMenuItems, _selectedItem) {
  return DropdownButton<ListItemHelper>(
      hint: Text("Selection"),
      value: _selectedItem,
      items: _dropdownMenuItems,
      onChanged: (value) {
        _selectedItem = value;
      });
}

Widget inputDropButton(String title, TextEditingController _controler,
    List<dynamic> itens, bool required, String filedId) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        DropdownButtonFormField(
            value: _controler,
            hint: Text('Selecione uma opção'),
            decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                filled: true),
            validator: (value) {
              if (required) {
                if (value.isEmpty && required) {
                  return "Campo $title obrigatório";
                }
              }
              return null;
            },
            items: itens.map((item) {
              return DropdownMenuItem(
                child: new Text(item["value"]),
                value: item["id"],
              );
            }).toList(),
            onChanged: (newValue) {
              filedId = newValue.toString();
            })
      ],
    ),
  );
}

class BasicDateField extends StatelessWidget {
  final format = DateFormat("dd/MM/yyyy");
  final TextEditingController controller;
  final String title;
  final bool requiredInput;
  BasicDateField(
      {Key key, @required this.controller, this.title, this.requiredInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 10,
          ),
          DateTimeField(
            decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                filled: true),
            //controller: controller,
            format: format,
            autovalidate: true,

            initialValue:
                controller.text != "" ? DateTime.parse(controller.text) : null,
            validator: (value) {
              if (requiredInput) {
                if (value == null && requiredInput) {
                  return "Campo $title obrigatório";
                } else {
                  if (value.toString() == "" && requiredInput) {
                    return "Campo $title obrigatório";
                  }
                }
              }
              return null;
            },
            onSaved: (value) {
              DateTime.parse(value.toString());
            },
            onChanged: (value) {
              return controller.text = value.toString();
            },

            onShowPicker: (context, currentValue) {
              return showDatePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  initialDate: currentValue ?? DateTime.now(),
                  lastDate: DateTime(2100));
            },
          ),
        ]);
  }
}

Widget inputTextField(
    String title, TextEditingController controler, String tipo, bool required) {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});

  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Text(
        //   title,
        //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        if (tipo == "telefone")
          TextFormField(
              controller: controler,
              inputFormatters: [maskFormatter],
              keyboardType: tipoTexto(tipo),
              decoration: InputDecoration(
                hintText: title,
              ),
              validator: (value) {
                if (required) {
                  if (value.isEmpty && required) {
                    return "Campo $title obrigatório";
                  } else if (tipo == "email") {
                    return validateEmail(value);
                  }
                }
                return null;
              })
        else if (tipo == 'textarea')
          TextFormField(
              validator: (value) {
                if (required) {
                  if (value.isEmpty && required) {
                    return "Campo $title obrigatório";
                  }
                }
                return null;
              },
              controller: controler,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 10,
              decoration: InputDecoration(hintText: title))
        else
          TextFormField(
              validator: (value) {
                if (required) {
                  if (value.isEmpty && required) {
                    return "Campo $title obrigatório";
                  } else if (tipo == "email") {
                    return validateEmail(value);
                  }
                }
                return null;
              },
              onChanged: (value) {
                if (tipo == "email") {
                  return validateEmail(value);
                }
              },
              controller: controler,
              obscureText: tipo == "senha" ? true : false,
              keyboardType: tipoTexto(tipo),
              decoration: InputDecoration(hintText: title))
      ],
    ),
  );
}

Widget inputTextFieldDisabled(
    String title, TextEditingController controler, String tipo, bool required) {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});

  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        tipo == "telefone"
            ? TextFormField(
                enabled: false,
                controller: controler,
                inputFormatters: [maskFormatter],
                keyboardType: tipoTexto(tipo),
                decoration: InputDecoration(hintText: title),
                validator: (value) {
                  if (required) {
                    if (value.isEmpty && required) {
                      return "Campo $title obrigatório";
                    } else if (tipo == "email") {
                      return validateEmail(value);
                    }
                  }
                  return null;
                })
            : TextFormField(
                enabled: false,
                validator: (value) {
                  if (required) {
                    if (value.isEmpty && required) {
                      return "Campo $title obrigatório";
                    } else if (tipo == "email") {
                      return validateEmail(value);
                    }
                  }
                  return null;
                },
                controller: controler,
                obscureText: tipo == "senha" ? true : false,
                keyboardType: tipoTexto(tipo),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color(0xfff3f3f4),
                    filled: true))
      ],
    ),
  );
}

String validateEmail(String value) {
  if (value.isEmpty) {
    // The form is empty
    return "Campo email obrigatório";
  }
  // This is just a regular expression for email addresses
  String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
      "\\@" +
      "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
      "(" +
      "\\." +
      "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
      ")+";
  RegExp regExp = new RegExp(p);

  if (regExp.hasMatch(value)) {
    return null;
  }

  return 'Email não é válido';
}

TextInputType tipoTexto(String tipo) {
  TextInputType ret;
  if (tipo == "email") {
    ret = TextInputType.emailAddress;
  } else {
    ret = TextInputType.text;
  }
  return ret;
}
