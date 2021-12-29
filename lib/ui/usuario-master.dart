import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/tela_Gerenc_plantoes.dart';
import 'package:flutter_application_1/ui/tela_login.dart';
import 'package:flutter_application_1/ui/tela_plantoes_registrados.dart';
import 'package:flutter_application_1/data/models/usuario.dart';
import 'package:flutter_application_1/data/shared_preferences_helper.dart';

import 'historico.dart';

class UsuarioMaster extends StatefulWidget {
  const UsuarioMaster({Key? key}) : super(key: key);

  @override
  _UsuarioMasterState createState() => _UsuarioMasterState();
}

class _UsuarioMasterState extends State<UsuarioMaster> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _nomePlantao = TextEditingController();
  int selectedRadioTile = 0;
  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  Widget build(BuildContext context) {
    dynamic argumentUsuario = ModalRoute.of(context)!.settings.arguments;
    Usuario usuario = argumentUsuario;
    return Scaffold(
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

  buildAppBar() {
    return AppBar(
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
              title: Text('DRA. ${usuario.nome}'),
              subtitle: const Text('Hospital Alan Turing'),
              leading: Icon(Icons.account_circle_rounded, size: 50),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.settings, size: 35))),
          ListTile(
            title: const Text('SAIR'),
            onTap: () {
              SharedPreferencesHelper sharedPreferences = SharedPreferencesHelper();
              sharedPreferences.setUser(false);
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
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset('ALAN_TURING.png'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'ID do plantão:'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo obrigatório!';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Nome do plantão:'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo obrigatório!';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Doutor(a) responsável do plantão:'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo obrigatório!';
                }
                return null;
              },
            ),
            RadioListTile(
                value: 12,
                groupValue: selectedRadioTile,
                title: Text('12h'),
                activeColor: Colors.blue,
                onChanged: (val) {
                  setSelectedRadioTile(0);
                }),
            RadioListTile(
                value: 24,
                groupValue: 33,
                activeColor: Colors.blue,
                title: Text('24h'),
                onChanged: (val) {
                  setSelectedRadioTile(1);
                }),
            Divider(
              height: 20,
              color: Colors.grey[900],
            ),
            RaisedButton(
              child: Row(children: [
                Text('Data do plantão'),
              ]),
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2001),
                    lastDate: DateTime(2022));
              },
            ),
            Divider(
              height: 10,
              color: Colors.grey[900],
            ),
            RaisedButton(
              child: Row(children: [
                Text('hora do plantão'),
              ]),
              onPressed: () {
                showTimePicker(
                    context: context,
                    initialTime: const TimeOfDay(hour: 0, minute: 0));
              },
            ),
            Divider(
              height: 20,
              color: Colors.grey[900],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (!_formKey.currentState!.validate()) return;
              },
              child: Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }
}
