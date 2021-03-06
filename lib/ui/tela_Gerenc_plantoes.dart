import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/data/dao/usuario_dao.dart';
import 'package:flutter_application_1/ui/chat.dart';
import 'package:flutter_application_1/ui/tela_login.dart';
import 'package:flutter_application_1/ui/tela_plantoes_registrados.dart';
import 'package:flutter_application_1/ui/telas_plantoes_ativos.dart';
import 'package:flutter_application_1/data/models/usuario.dart';
import 'package:flutter_application_1/data/shared_preferences_helper.dart';

import 'historico.dart';

class TelaGerenciarPlantoes extends StatefulWidget {
  const TelaGerenciarPlantoes({Key? key}) : super(key: key);

  @override
  TelaGerenciarPlantoesState createState() => TelaGerenciarPlantoesState();
}

class TelaGerenciarPlantoesState extends State<TelaGerenciarPlantoes> {
  @override
  Widget build(BuildContext context) {
    dynamic argumentUsuario = ModalRoute.of(context)!.settings.arguments;
    Usuario usuario = argumentUsuario;
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
      floatingActionButton: buildIconAppBar(context),
      drawer: buildDrawer(context, usuario),
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
            onTap: () async {
              final data = await UsuarioDao()
                  .login(usuarionome: usuario.nomeUse, senhausu: usuario.senha);

              Navigator.pushNamed(
                context,
                '/tela-plantoes-ativos',
                arguments: data[0],
              );
            },
          ),
          ListTile(
            title: const Text('PLANTÕES GERENCIADOS'),
            onTap: () async {
              final data = await UsuarioDao()
                  .login(usuarionome: usuario.nomeUse, senhausu: usuario.senha);

              Navigator.pushNamed(
                context,
                '/tela-plantoes-registrados',
                arguments: data[0],
              );
            },
          ),
          ListTile(
            title: const Text('RELATÓRIO'),
            onTap: () async {
              final data = await UsuarioDao()
                  .login(usuarionome: usuario.nomeUse, senhausu: usuario.senha);
              Navigator.pushNamed(
                context,
                '/historico',
                arguments: data[0],
              );
            },
          ),
          ListTile(
            title: const Text('SAIR'),
            onTap: () async {
              SharedPreferencesHelper sharedPreferences = SharedPreferencesHelper();
              sharedPreferences.sair();
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}

buildAppBar() {
  return AppBar(
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    ],
    title:
        Align(alignment: Alignment.center, child: Text('GERENCIAR PLANTÕES')),
    backgroundColor: Color(0xff204559),
  );
}

buildIconAppBar(BuildContext context) {
  return FloatingActionButton(
    child: Icon(
      Icons.message_rounded,
      size: 30,
    ),
    backgroundColor: Color(0xff295872),
    onPressed: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Chat()));
    },
  );
}

buildBody() {
  return buildRow();
}

buildRow() {
  return Row(
    children: <Widget>[
      Expanded(
        flex: 6,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [Color(0xff295872), Color(0xff8dbeda)]),
            border: Border(
              right: BorderSide(
                color: Colors.white, //                    <--- top side
                width: 1.0,
              ),
            ),
          ),
          alignment: Alignment.topLeft,
          child: ListView(children: [
            Container(
              decoration: myBoxDecoration(),
              child: ListTile(
                title: Text(
                  'PLANTÃO CARDIOLÓGICO (10/03)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Container(
                  width: 100,
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.cancel,
                      size: 30,
                      color: Colors.red.shade700,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.change_circle,
                      size: 30,
                      color: Colors.orange.shade300,
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              decoration: myBoxDecoration(),
              child: ListTile(
                title: Text(
                  'PLANTÃO CARDIOLÓGICO (10/03)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Container(
                  width: 100,
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.cancel,
                      size: 30,
                      color: Colors.red.shade700,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.change_circle,
                      size: 30,
                      color: Colors.orange.shade300,
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              decoration: myBoxDecoration(),
              child: ListTile(
                title: Text(
                  'PLANTÃO CARDIOLÓGICO (10/03)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Container(
                  width: 100,
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.cancel,
                      size: 30,
                      color: Colors.red.shade700,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.change_circle,
                      size: 30,
                      color: Colors.orange.shade300,
                    ),
                  ]),
                ),
              ),
            ),
          ]),
          //color: Colors.blue
        ),
      ),
    ],
  );
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border(
      bottom: BorderSide(
        //                   <--- left side
        width: 1.0,
        color: Colors.white60,
      ),
    ),
  );
}
