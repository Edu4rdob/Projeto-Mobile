import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro_pt1.dart';
import 'package:flutter_application_1/telas_plantoes_ativos.dart';
import 'package:flutter_application_1/validar_email.dart';

class TelaLoginPage extends StatefulWidget {
  const TelaLoginPage({Key? key}) : super(key: key);

  @override
  _TelaLoginPageState createState() => _TelaLoginPageState();
}

class _TelaLoginPageState extends State<TelaLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Container buildBody() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff295872), Color(0xff8dbeda)])),
      child: ListView(
        children: [
          SizedBox(height: 80),
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('ALAN_TURING.png'),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(top: 0, left: 60, bottom: 5),
            child: Text(
              'Usuário:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ), //TextStyle
            ),
          ),
          Center(
            child: Container(
                margin: EdgeInsets.only(left: 35, right: 35),
                child: Align(
                  child: widgetTextFieldPerson(),
                )),
          ),
          Container(
              margin: EdgeInsets.only(top: 10, left: 60, bottom: 5),
              child: Text(
                'Senha: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ), //TextStyle
              )),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 35, right: 35),
              child: widgetTextFieldLock(),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 30, bottom: 80),
              child: Container(
                child: Align(
                    child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff204559),
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10)),
                  child: Text(
                    'ENTRAR',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => TelaPlantoes()));
                    },
                )),
              )),
          Row(children: [
            Container(
                margin: EdgeInsets.only(left: 3, right: 145),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey.shade400),
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => FormPage()));
                    },
                  ),
                )),
            Container(
              margin: EdgeInsets.only(right: 3),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey.shade400),
                  child: Text(
                    'Redefinir Senha',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ValidateEmail()));
                  },
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }

  widgetTextFieldPerson() {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: (BorderRadius.all(Radius.circular(30)))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.blue)),
          prefixIcon: Icon(Icons.person),
          filled: true,
          fillColor: Colors.blue.shade100),
    );
  }

  widgetTextFieldLock() {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: (BorderRadius.all(Radius.circular(30))),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.blue)),
          prefixIcon: Icon(Icons.lock),
          filled: true,
          fillColor: Colors.blue.shade100),
    );
  }
}
