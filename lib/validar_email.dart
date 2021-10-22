import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/troca.dart';

class ValidateEmail extends StatefulWidget {
  const ValidateEmail({Key? key}) : super(key: key);

  @override
  _ValidateEmailState createState() => _ValidateEmailState();
}

class _ValidateEmailState extends State<ValidateEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: buildAppBar(),
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

  buildBody() {
    return ListView(
      children: [buildContainer()],
    );
  }

  Container buildContainer() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
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
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          SizedBox(height: 30),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(labelText: 'CPF'),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xff67a8cd),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Troca()));
            },
            child: Text(
              'CONFIRMAR',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
