/*
import 'package:flutter/material.dart';

class CaixaDeEntrada extends StatefulWidget{

  static final tag = "caixadentrada-mob"; 

  @override
  _CaixaDeEntrada createState() => _CaixaDeEntrada();
}

class _CaixaDeEntrada extends State<CaixaDeEntrada> with SingleTickerProviderStateMixin{
  
  TabController _controller; 

  @override
  void initState(){
      _controller = TabController(length: 3,vsync: this);
  }

  @override 
  void dispose(){
    _controller.dispose();
    super.dispose();
  } // deixar de ocupar espaço na memória depois de ser removido

  @override
  Widget build(BuildContext context){

    final content = Column(

      children: <Widget>[
        TabBar(
          controller: _controller, 
          labelColor: Colors. blue,
          tabs: <Widget>[
            Tab(text:"TUDO"),
            Tab(text:"PLANTÕES"),
            Tab(text:"MENSAGENS"),
            Tab(text:"AVISOS"),
            Tab(), // tab com ícone de lixeira
          ], // tabs da parte de cima
        ), // tabbar
      ],
    ); //coluna
    
    Container(
      height = MediaQuery.of(context).size.height - 150,
      child: TabBarView(
        
        controller = _controller,
        
        children:<Widget>[
          
          //nos conteiners, vai todo o conteúdo - o "body"

          Container(
            color: Colors.blue,
            child: Align(child: Text("Avisos de TUDO"))
          ), 

          Container(
            color: Colors.blue,
            child: Align(child: Text("Avisos de PLANTÕES"))
          ),

          Container(
            color: Colors.blue,
            child: Align(child: Text("Avisos de MENSAGENS"))
          ),

          Container(
            color: Colors.blue,
            child: Align(child: Text("Avisos de AVISOS"))
          ),

          Container(
            color: Colors.blue,
            child: Align(child: Text("ITENS DE APAGADO"))
          ),

        ],
      ),
      color: Colors.
      height: MediaQuery.of(context).size.height,]
      child: Text(""),
    );

    return 
    
    // esse arquivo será mandado para um outro por esse return - o menu
  }

}
*/