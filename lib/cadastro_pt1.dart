import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    ); //Scaffold
  }

  buildBody() {
    return Center(
      child: Column(
        children: [
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
              borderSide: BorderSide(width: 2, color: Color(0x295872))),
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
              borderSide: BorderSide(width: 2, color: Color(0x295872))),
          icon: Icon(Icons.lock),
          hintText: 'Informe o nome'),
    );
  }
}
