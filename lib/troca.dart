import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/tela_login.dart';
import 'package:flutter_application_1/validar_email.dart';

class Troca extends StatefulWidget {
  const Troca({Key? key}) : super(key: key);

  @override
  _TrocaState createState() => _TrocaState();
}

class _TrocaState extends State<Troca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff295872),
          Color(0xff357599),
          Color(0xff4292bf),
          Color(0xff67a8cd),
          Color(0xff8dbeda)
        ])),
        child: Center(
          child: buildBody(),
        ),
      ),
    );
  }
  buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ValidateEmail()));
        }, icon: Icon(Icons.keyboard_arrow_left_outlined)),
    title: Align(alignment: Alignment(-0.2, 1.0), child: Text('NOVA SENHA')),
    backgroundColor: Color(0xff204559),
  );
}

  buildBody() {
    return ListView(
      children: [buildContainer()],
    );
  }

  Container buildContainer() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 80),
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('ALAN_TURING.png'),
          ),
          SizedBox(height: 30),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(labelText: 'Nova Senha'),
          ),
          SizedBox(height: 30),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(labelText: 'Repita a Nova Senha'),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xff67a8cd),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TelaLoginPage()));
            },
            child: Text(
              'TROCAR SENHA',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
