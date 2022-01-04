import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/ui/tela_login.dart';
import 'package:flutter_application_1/ui/troca.dart';

class ValidateEmail extends StatefulWidget {
  const ValidateEmail({Key? key}) : super(key: key);

  @override
  _ValidateEmailState createState() => _ValidateEmailState();
}

class _ValidateEmailState extends State<ValidateEmail> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
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

  buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TelaLoginPage()));
          },
          icon: Icon(Icons.keyboard_arrow_left_outlined)),
      title: Align(alignment: Alignment(-0.2, 1.0), child: Text('NOVA SENHA')),
      backgroundColor: Color(0xff204559),
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
        margin: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 80),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('ALAN_TURING.png'),
              ),
              SizedBox(height: 30),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório!';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 30),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório!';
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: 'CPF'),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff67a8cd),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  } else {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Troca()));
                  }
                },
                child: Text(
                  'CONFIRMAR',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }
}
