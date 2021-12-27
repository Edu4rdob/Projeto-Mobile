import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/tela_Gerenc_plantoes.dart';
import 'package:flutter_application_1/ui/tela_login.dart';
import 'package:flutter_application_1/ui/tela_plantoes_registrados.dart';
import 'package:flutter_application_1/data/models/usuario.dart';

import 'historico.dart';

class UsuarioMaster extends StatefulWidget {
  const UsuarioMaster({Key? key}) : super(key: key);

  @override
  _UsuarioMasterState createState() => _UsuarioMasterState();
}

class _UsuarioMasterState extends State<UsuarioMaster> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _nomePlantao = TextEditingController();
  @override
  Widget build(BuildContext context) {
    dynamic argumentUsuario = ModalRoute.of(context)!.settings.arguments;
    Usuario usuario = argumentUsuario;
    return Scaffold(
      appBar: buildAppBar(),
      drawer: buildDrawer(context, usuario),
      body: buildBody(),
    );
  }

  buildAppBar() {
    return AppBar(
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      ],
      title:
          Align(alignment: Alignment.center, child: Text('Cadastrar Plantões')),
      backgroundColor: Color(0xff204559),
    );
  }

  Drawer buildDrawer(BuildContext context, Usuario usuario) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff295872),
              Color(0xff357599),
              Color(0xff4292bf),
              Color(0xff67a8cd),
              Color(0xff8dbeda)
            ])),
          ),
          ListTile(
              title: Text(
                 'DRA. ${usuario.nome}'
              ),
              subtitle: const Text('Hospital Alan Turing'),
              leading: Icon(Icons.account_circle_rounded, size: 50),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.settings, size: 35))),
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

  buildBody() {
    return Container(
      margin: EdgeInsets.all(24),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Nome do plantão:'),
              controller: _nomePlantao,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo obrigatório!';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (!_formKey.currentState!.validate()) return;
                print(_nomePlantao.text);
              },
              child: Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }
}
