/*//pagina 2
                
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class Cadastro2Page extends StatefulWidget {
  const Cadastro2Page({Key? key}) : super(key: key);
  @override
  _Cadastro2PageState createState() => _Cadastro2PageState();
}
class _Cadastro2PageState extends State<Cadastro2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );//Scaffold
  }
  buildBody(){
    return Center(
        child: Column(
          children: <Widget>[
            Container(
              background: Color(0x4292bf), 
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              children:[
                Text(
                'Data de nascimento', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 14, color: Color(0x295872), 
                ),//TextStyle  
              ],
              children:[
                color: Colors.white,
                child: widgetTextField(' '),
              ],
              children:[
                Text(
                'Gênero', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 14, color: Color(0x295872), 
                ),//TextStyle
              ],
              children:[
                color: Colors.white,
                child: widgetTextField(' '),
              ],
              children:[
                Text(
                'CPF', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 14, color: Color(0x295872), 
                ),//TextStyle
              ],
              children:[
                color: Colors.white,
                child: widgetTextField(' '),
              ],
              children:[
                Text(
                'Telefone', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 14, color: Color(0x295872), 
                ),//TextStyle
              ],
              children:[
                color: Colors.white,
                child: widgetTextField(' '),
              ],
              children:[
                Text(
                'Especialidade', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 14, color: Color(0x295872), 
                ),//TextStyle
              ],
              children:[
                color: Colors.white,
                child: widgetTextField(' '),
              ],
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0x357599),
                onPressed: () {},
                child: Text(
                  'CONFIRMAR',
                  style: TextStyle(color: Color(0x295872)),
                ),
                ),
              ),           
            ),
          ),//Container
          ],
        ),
      ),
    );
  };
  widgetTextField(String campo) {
    return TextField(
      decoration:
          InputDecoration(border: InputBorder.all(color: Colors(0x295872)),
          hintText: campo),
    );
  }
  
  }
}
*/