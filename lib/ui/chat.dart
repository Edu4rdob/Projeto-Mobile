import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/ui/tela_Gerenc_plantoes.dart';
import 'package:flutter_application_1/ui/tela_login.dart';
import 'package:flutter_application_1/ui/tela_plantoes_registrados.dart';
import 'package:flutter_application_1/ui/telas_plantoes_ativos.dart';
import 'package:flutter_application_1/data/models/usuario.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    dynamic argumentUsuario = ModalRoute.of(context)!.settings.arguments;
    Usuario usuario = argumentUsuario;
    return Scaffold(
      //appBar: buildAppBar(),
      appBar: buildAppBar(),
      drawer: buildDrawer(context, usuario),
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

  Drawer buildDrawer(BuildContext context, Usuario usuario) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Color.fromRGBO(66, 165, 245, 1.0),
          ),
          ListTile(
              title: Text(
                'DRA. ${usuario.nome}',
              ),
              subtitle: const Text('Hospital Alan Turing'),
              leading: Icon(Icons.account_circle_rounded, size: 50),
              trailing: Icon(Icons.settings, size: 30)),
          ListTile(
            title: const Text('ÍNICIO'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TelaPlantoes()));
            },
          ),
          ListTile(
            title: const Text('GERENCIAR PLANTÕES'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TelaGerenciarPlantoes()));
            },
          ),
          ListTile(
            title: const Text('PLANTÕES GERENCIADOS'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TelaPlantoesRegistrados()));
            },
          ),
          ListTile(
            title: const Text('RELATÓRIO'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('SAIR'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TelaLoginPage()));
            },
          ),
        ],
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      ],
      title: Align(alignment: Alignment.center, child: Text('CHAT')),
      backgroundColor: Colors.blueGrey.shade700,
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
      margin: EdgeInsets.all(0),
      child: Column(
        children: [
          SizedBox(height: 110),
          Opacity(
            opacity: 0.4,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('ALAN_TURING.png'),
            ),
          ),
          SizedBox(height: 130),
          SizedBox(height: 130),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: (BorderRadius.all(Radius.circular(15)))),
                labelText: 'Digite aqui',
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).unfocus();
                      });
                    },
                    child: Icon(Icons.send)),
                filled: true,
                fillColor: Colors.black12),
          ),
          SizedBox(height: 0),
        ],
      ),
    );
  }
}