import 'package:flutter/material.dart';

import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Login",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ),
  );
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    ); //Scaffold
  }

  buildBody() {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            color: Color(0x4292bf),
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            child: ListView(
              children: [
                Container(
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color(0x295872),
                    ), //TextStyle
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: widgetTextFieldPerson('Informe o usuário'),
                ),
                Container(
                    child: Text(
                  'SENHA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0x295872),
                  ), //TextStyle
                )),
                Container(
                  color: Colors.white,
                  child: widgetTextFieldLock('Informe a senha'),
                )
              ],
            ),
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0x357599)),
              onPressed: () {},
              child: Text(
                'ENTRAR',
                style: TextStyle(color: Color(0x295872)),
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0x4292bf)),
              child: Text(
                'Cadastre-se',
                style: TextStyle(color: Color(0x295872)),
              ),
              onPressed: () {
                /*Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => CadatroPage(),//importa a tela de cadastro aqui
                    ),
                  );*/
              },
            ),
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0x4292bf)),
              child: Text(
                'Redefinir Senha',
                style: TextStyle(color: Color(0x295872)),
              ),
              onPressed: () {
                /*Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => RedefinirSenhaPage(),//importa a tela de redefinir senha aqui
                    ),
                  );*/
              },
            ),
          ),
        ], //Container
      ),
    );
  }

  widgetTextFieldPerson(String campo) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x295872))),
          icon: Icon(Icons.person),
          hintText: 'Informe o nome'),
    );
    /*
        decoration: BoxDecoration(
          border: Border.all(color: Color(0x295872)),
        ),
        child: Icon(Icons.person),
        hintText: campo
        */
  }

  widgetTextFieldLock(String campo) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x295872))),
          icon: Icon(Icons.lock),
          hintText: 'Informe o nome'),
    );
  }
}
