//import 'package:cwc_flutter/form_screen.dart';

import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/cadastro_pt2.dart';
import 'package:flutter_application_1/ui/tela_login.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPagesState createState() => _FormPagesState();
}

class _FormPagesState extends State<FormPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(context, _formKey),
    );
  }
}

buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => TelaLoginPage()));
        },
        icon: Icon(Icons.keyboard_arrow_left_outlined)),
    title: Align(alignment: Alignment(-0.2, 1.0), child: Text('CADASTRO')),
    backgroundColor: Color(0xff204559),
  );
}

Container buildBody(BuildContext context, _formKey) {
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
      Color(0xff295872),
      Color(0xff357599),
      Color(0xff4292bf),
      Color(0xff67a8cd),
      Color(0xff8dbeda)
    ])),
    child: Container(
      margin: EdgeInsets.only(left: 40, right: 40),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildImage(),
            SizedBox(height: 70),
            buildNameField(),
            SizedBox(height: 10),
            buildNomeUsuarioField(),
            SizedBox(height: 10),
            buildemailField(),
            SizedBox(height: 10),
            buildSenhaField(),
            SizedBox(height: 50),
            Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff204559),
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10)),
                  child: Text('Proximo',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    } else {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => FormPage2()));
                    }
                  },
                ))
          ],
        ),
      ),
    ),
  );
}

Widget buildNameField() {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Campo obrigatório!';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: 'Digite seu nome',
      enabledBorder: OutlineInputBorder(
          borderRadius: (BorderRadius.all(Radius.circular(5)))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.blue)),
      prefixIcon: Icon(Icons.person),
    ),
  );
}

Widget buildNomeUsuarioField() {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Campo obrigatório!';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: 'Digite seu Usuário',
      enabledBorder: OutlineInputBorder(
          borderRadius: (BorderRadius.all(Radius.circular(5)))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.blue)),
      prefixIcon: Icon(Icons.account_circle_sharp),
    ),
  );
}

Widget buildemailField() {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Campo obrigatório!';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: 'Digite seu email',
      enabledBorder: OutlineInputBorder(
          borderRadius: (BorderRadius.all(Radius.circular(5)))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.blue)),
      prefixIcon: Icon(Icons.email),
    ),
  );
}

Widget buildSenhaField() {
  return TextFormField(
    obscureText: true,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Campo obrigatório!';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: 'Digite sua senha',
      enabledBorder: OutlineInputBorder(
          borderRadius: (BorderRadius.all(Radius.circular(5)))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.blue)),
      prefixIcon: Icon(Icons.lock),
    ),
  );
}

buildImage() {
  return SizedBox(
    width: 200,
    height: 200,
    child: Image.asset('ALAN_TURING.png'),
  );
}
