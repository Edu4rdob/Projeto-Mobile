import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/data/dao/usuario_dao.dart';
import 'package:flutter_application_1/ui/tela_Gerenc_plantoes.dart';
import 'package:flutter_application_1/ui/tela_login.dart';
import 'package:flutter_application_1/ui/tela_plantoes_registrados.dart';
import 'package:flutter_application_1/ui/telas_plantoes_ativos.dart';
import 'package:flutter_application_1/data/models/usuario.dart';

import 'chat.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Historico",
      debugShowCheckedModeBanner: false,
      home: HistoricoPage(),
    ),
  );
}

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({Key? key}) : super(key: key);

  @override
  _HistoricoPageState createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {
  @override
  Widget build(BuildContext context) {
    dynamic argumentUsuario = ModalRoute.of(context)!.settings.arguments;
    Usuario usuario = argumentUsuario;
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(usuario),
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
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.settings, size: 35))),
          ListTile(
            title: const Text('ÍNICIO'),
            onTap: () async {
              final data = await UsuarioDao()
                  .login(usuarionome: usuario.nome, senhausu: usuario.senha);

              Navigator.pushNamed(
                context,
                '/tela-plantoes-ativos',
                arguments: data,
              );
            },
          ),
          ListTile(
            title: const Text('GERENCIAR PLANTÕES'),
            onTap: () async {
              final data = await UsuarioDao()
                  .login(usuarionome: usuario.nome, senhausu: usuario.senha);

              Navigator.pushNamed(
                context,
                '/tela-gerenciar-plantoes',
                arguments: data,
              );
            },
          ),
          ListTile(
            title: const Text('PLANTÕES GERENCIADOS'),
            onTap: () async {
              final data = await UsuarioDao()
                  .login(usuarionome: usuario.nome, senhausu: usuario.senha);

              Navigator.pushNamed(
                context,
                '/tela-plantoes-registrados',
                arguments: data,
              );
            },
          ),
          ListTile(
            title: const Text('SAIR'),
            onTap: () async {
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
      IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    ],
    title: Align(alignment: Alignment.center, child: Text('HISTÓRICO')),
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

buildBody(Usuario usuario) {
  return Row(
    children: <Widget>[
      Expanded(
        flex: 6,
        child: Container(
          padding: EdgeInsets.only(bottom: 5),
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
            ListTile(
              title: Container(
                decoration: myBoxDecoration(),
                child: ListTile(
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'PLANTÃO',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            buildContainerText('PLANTAO CLÍNICO GERAL', 'DRA. ${usuario.nome}',
                '24', Colors.orange, '09/12\n'),
            buildContainerText('PLANTAO CARDIOLOGIA', 'DRA. ${usuario.nome}',
                '12', Colors.green.shade500, '08/12\n'),
            buildContainerText('PLANTAO PEDIÁTRICO', 'DRA. ${usuario.nome}',
                '12', Colors.green.shade500, '07/10\n'),
            buildContainerText('PLANTAO PEDIÁTRICO', 'DRA. ${usuario.nome}',
                '12', Colors.green.shade500, '07/10\n'),
          ]),
          //color: Colors.blue
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [Color(0xff295872), Color(0xff8dbeda)]),
          ),
          child: ListView(
            children: [
              ListTile(
                  title: Container(
                decoration: myBoxDecoration(),
                child: ListTile(
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'STATUS',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )),
              SizedBox(
                height: 6,
              ),
              buildContainerTipo(1),
              SizedBox(
                height: 6,
              ),
              buildContainerTipo(1),
              SizedBox(
                height: 6,
              ),
              buildContainerTipo(0),
              SizedBox(
                height: 6,
              ),
              buildContainerTipo(1),
            ],
          ),
          //  color: Colors.blue
        ),
      )
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

buildContainerText(
    String plantao, String nome, String tipo, Color color, String data) {
  return Container(
    decoration: myBoxDecoration(),
    child: ListTile(
        title: Text(
          plantao,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          nome,
          style: TextStyle(color: Colors.white),
        ),
        leading: Text(data, style: TextStyle(color: Colors.grey)),
        trailing: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 3.0,
              color: color,
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(30.0) //                 <--- border radius here
                ),
          ),
          child: Text(
            tipo,
            style: TextStyle(color: Colors.white),
          ),
        )),
  );
}

buildContainerTipo(int op) {
  if (op == 1) {
    return Container(
      decoration: myBoxDecoration(),
      child: ListTile(
        title: Align(
            alignment: Alignment.center,
            child: ListTile(
              title: Icon(
                Icons.check_circle_outline,
                size: 30,
                color: Colors.green.shade500,
              ),
              subtitle: Text('CONCLUÍDO',
                  style: TextStyle(fontSize: 10, color: Colors.white)),
            )),
      ),
    );
  } else {
    return Container(
      decoration: myBoxDecoration(),
      child: ListTile(
        title: Align(
            alignment: Alignment.center,
            child: ListTile(
              title: Icon(
                Icons.cancel_outlined,
                size: 30,
                color: Colors.red.shade700,
              ),
              subtitle: Text('CANCELADO',
                  style: TextStyle(fontSize: 10, color: Colors.white)),
            )),
      ),
    );
  }
}
