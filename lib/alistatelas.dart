import 'package:flutter/material.dart';

class CaixaDeEntrada extends StatefulWidget {
  const CaixaDeEntrada({Key? key}) : super(key: key);

  @override
  CaixaDeEntradaState createState() => CaixaDeEntradaState();
}

class CaixaDeEntradaState extends State<CaixaDeEntrada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),

      body: buildBody(), //conteúdo do body
    ); // scaffold do return
  }

  buildAppBar() {
    return AppBar();
  }

  buildBody() {
    // corpo do texto
    return ListView(
      children: [
        buildListStyle(urlImagem: "", tipoMensagem: "a", msg: "a", data: "a"),
        buildListStyle(urlImagem: "", tipoMensagem: "b", msg: "e", data: "a"),
        buildListStyle(urlImagem: "", tipoMensagem: "c", msg: "e", data: "a"),
      ],
    );
  }

  buildListStyle(
      {String urlImagem =
          'https://image.flaticon.com/icons/png/512/1665/1665731.png',
      String tipoMensagem = '',
      String msg = '',
      String data = ''}) {
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
