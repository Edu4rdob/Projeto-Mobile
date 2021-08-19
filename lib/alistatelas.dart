import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  ListaState createState() => ListaState();
}

class ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: buildAppBar(),
      body: buildBody(), //conteúdo do body
    ); // scaffold do return
  }

  /*
  buildAppBar() {
    return AppBar();
  }
  */
  buildBody() {
    // corpo do texto
    return ListView(
      children: [
        buildListStyle(
          tipoMensagem: "NOVO PLANTÃO REGISTRADO", 
          msg: "PLANTÃO CARDIOLÓGICO, 12H - 00H, quar...", 
          data: "HOJE, 02/03"),
        
        buildListStyle(
          tipoMensagem: "MENSAGEM DE GAUGUIN", 
          msg: "INFELIZMENTE NÃO POSSO TROCAR DE PLANTÃO COM VOCÊ, ESTAREI...", 
          data: "ONTEM, 01/03"),
        
        buildListStyle(
          tipoMensagem: "[AVISO!] FUNCIONAMENTO DO HOSPITAL", 
          msg: "DURANTE OS DIAS 26 E 27 DE FEVEREIRO, O HOSPITAL NÃO ESTARÁ FUNC...", 
          data: "SEXTA, 21/02"),

        buildListStyle(
          tipoMensagem: "NOVO PLANTÃO REGISTRADO", 
          msg: "PLANTÃO SERVIÇOS CLÍNICOS, 12H - 00H, seg...", 
          data: "HOJE, 02/03"),
      ],
    );
  }

  buildListStyle(
      {String urlImagem =
          'https://image.flaticon.com/icons/png/512/1665/1665731.png'},
      String tipoMensagem,
      String msg,
      String data) {
    return ListTile(
      
      //leading: Icon(Icons.account_circle_rounde, size:40),
      leading:
          CircleAvatar(backgroundImage: NetworkImage(urlImagem), radius: 20),

      title: Text(tipoMensagem, style: TextStyle()),

      subtitle: Text(msg),

      trailing: Text(data, style: TextStyle(color: Colors.blue)),
    ); // listas
  }
}
