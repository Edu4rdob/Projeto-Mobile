import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/data/dao/usuario_dao.dart';
import 'package:flutter_application_1/data/models/usuario.dart';
import 'package:flutter_application_1/ui/cadastro_pt1.dart';
import 'package:flutter_application_1/ui/tela_login.dart';

class FormPage2 extends StatefulWidget {
  const FormPage2({Key? key}) : super(key: key);

  @override
  _FormPages2State createState() => _FormPages2State();
}

class _FormPages2State extends State<FormPage2> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(context, _formKey),
    );
  }
}

buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => FormPage()));
        },
        icon: Icon(Icons.keyboard_arrow_left_outlined)),
    title: Align(alignment: Alignment(-0.2, 1.0), child: Text('CADASTRO')),
    backgroundColor: Color(0xff204559),
  );
}

Container buildBody(BuildContext context, _formKey) {
  return Container(
    /*var listaUsuarios;
  return FutureBuilder<List<Usuario>>(
    future: listaUsuarios,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return buildListView(snapshot.data);
      } else {
        return Center(child: CircularProgressIndicator());
      }
    },
  );*/
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
      Color(0xff295872),
      Color(0xff357599),
      Color(0xff4292bf),
      Color(0xff67a8cd),
      Color(0xff8dbeda)
    ])),
    child: Container(
      margin: EdgeInsets.only(left: 40, right: 40),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildImage(),
            SizedBox(height: 70),
            builDataField(),
            SizedBox(height: 10),
            buildCpfField(),
            SizedBox(height: 10),
            buildTelefoneField(),
            SizedBox(height: 10),
            buildAreaField(),
            SizedBox(height: 50),
            Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff204559),
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10)),
                  child: Text('CONFIRMAR',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TelaLoginPage()));
                    }
                  },
                ))
          ],
        ),
      ),
    ),
  );
}

Widget builDataField() {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Campo obrigat??rio!';
      }
      return null;
    },
    decoration: InputDecoration(
        labelText: 'Digite a data de nascimento',
        enabledBorder: OutlineInputBorder(
            borderRadius: (BorderRadius.all(Radius.circular(5)))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.blue)),
        prefixIcon: Icon(Icons.date_range_outlined)),
  );
}

Widget buildCpfField() {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Campo obrigat??rio!';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: 'Digite seu CPF',
      enabledBorder: OutlineInputBorder(
          borderRadius: (BorderRadius.all(Radius.circular(5)))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.blue)),
      prefixIcon: Icon(Icons.person),
    ),
  );
}

Widget buildTelefoneField() {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Campo obrigat??rio!';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: 'Digite seu telefone',
      enabledBorder: OutlineInputBorder(
          borderRadius: (BorderRadius.all(Radius.circular(5)))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.blue)),
      prefixIcon: Icon(Icons.phone_android_outlined),
    ),
  );
}

Widget buildAreaField() {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Campo obrigat??rio!';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: 'Digite sua ??rea de atua????o',
      enabledBorder: OutlineInputBorder(
          borderRadius: (BorderRadius.all(Radius.circular(5)))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.blue)),
      prefixIcon: Icon(Icons.medical_services_outlined),
    ),
  );
}

buildImage() {
  return SizedBox(
    width: 200,
    height: 200,
    child: Image.asset('ALAN_TURING.png'),
  );
}
