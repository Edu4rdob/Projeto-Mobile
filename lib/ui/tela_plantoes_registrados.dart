import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/data/dao/plantoes_dao.dart';
import 'package:flutter_application_1/data/dao/usuario_dao.dart';
import 'package:flutter_application_1/data/models/plantoes.dart';
import 'package:flutter_application_1/ui/chat.dart';
import 'package:flutter_application_1/ui/historico.dart';
import 'package:flutter_application_1/ui/tela_Gerenc_plantoes.dart';
import 'package:flutter_application_1/ui/tela_login.dart';
import 'package:flutter_application_1/ui/telas_plantoes_ativos.dart';
import 'package:flutter_application_1/data/models/usuario.dart';
import 'package:flutter_application_1/data/shared_preferences_helper.dart';

class TelaPlantoesRegistrados extends StatefulWidget {
  const TelaPlantoesRegistrados({Key? key}) : super(key: key);

  @override
  _TelaPlantoesRegistradosState createState() =>
      _TelaPlantoesRegistradosState();
}

class _TelaPlantoesRegistradosState extends State<TelaPlantoesRegistrados> {
  Future<List<Plantoes>>? listaPlantoes;

  @override
  void initState() {
    super.initState();
  }

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
            title: const Text('??NICIO'),
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
            title: const Text('GERENCIAR PLANT??ES'),
            onTap: () async {
              final data = await UsuarioDao()
                  .login(usuarionome: usuario.nomeUse, senhausu: usuario.senha);

              Navigator.pushNamed(
                context,
                '/tela-gerenciar-plantoes',
                arguments: data[0],
              );
            },
          ),
          ListTile(
            title: const Text('RELAT??RIO'),
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
      IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    ],
    title: Align(
      alignment: Alignment.topLeft,
      child: Text('FILTRAR', style: TextStyle(fontSize: 15)),
    ),
    backgroundColor: Color(0xff204559),
  );
}

buildIconAppBar(BuildContext context) {
  return FloatingActionButton(
    child: Icon(
      Icons.message_rounded,
      size: 30,
    ),
    backgroundColor: Color(0xff204559),
    onPressed: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Chat()));
    },
  );
}

buildBody(Usuario usuario) {
  return buildRow(usuario);
}

buildRow(Usuario usuario) {
  return Row(
    children: <Widget>[
      Expanded(
        flex: 6,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
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
            buildContainerText('PLANTAO CL??NICO GERAL', 'DRA. ${usuario.nome}',
                '24', Colors.green.shade500),
            buildContainerText('PLANTAO CARDIOLOGIA', 'DRA. ${usuario.nome}',
                '12', Colors.orange),
            buildContainerText('PLANTAO PEDI??TRICO', 'DRA. ${usuario.nome}',
                '12', Colors.orange),
            buildContainerText('PLANTAO OBST??TRICO', 'DRA. ${usuario.nome}',
                '12', Colors.orange),
            buildContainerText('PLANTAO PEDIATRICO', 'DRA. ${usuario.nome}',
                '24', Colors.green.shade500),
            buildContainerText('PLANTAO CARDIOLOGIA', 'DRA. ${usuario.nome}',
                '12', Colors.green.shade500),
            buildContainerText('PLANTAO CARDIOLOGIA', 'DRA. ${usuario.nome}',
                '12', Colors.orange),
            buildContainerText('PLANTAO CARDIOLOGIA', 'DRA. ${usuario.nome}',
                '12', Colors.green.shade500),
            buildContainerText('PLANTAO CARDIOLOGIA', 'DRA. ${usuario.nome}',
                '12', Colors.green.shade500),
          ]),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff295872), Color(0xff8dbeda)]),
          ),
          child: ListView(
            children: [
              buildContainerTipo('09/02', '12:00h'),
              buildContainerTipo('05/02', '12:00h'),
              buildContainerTipo('03/02', '04:00h'),
              buildContainerTipo('09/05', '12:00h'),
              buildContainerTipo('09/02', '12:00h'),
              buildContainerTipo('09/02', '12:00h'),
              buildContainerTipo('09/02', '12:00h'),
              buildContainerTipo('09/02', '12:00h'),
              buildContainerTipo('09/02', '12:00h'),
            ],
          ),
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

buildContainerText(String plantao, String nome, String tipo, Color color) {
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

buildContainerTipo(String data, String hora) {
  return Container(
    decoration: myBoxDecoration(),
    child: ListTile(
      title: Align(
        alignment: Alignment.center,
        child: Text(
          data,
          style: TextStyle(color: Colors.white),
        ),
      ),
      subtitle: Align(
          alignment: Alignment.center,
          child: Text(hora, style: TextStyle(color: Colors.white))),
    ),
  );
}
