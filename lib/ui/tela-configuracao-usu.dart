import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  buildAppBar() {
    return AppBar(
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
      ],
      title: Align(alignment: Alignment.center, child: Text('CONFIGURAÇÃO')),
      backgroundColor: Color(0xff204559),
    );
  }

  Container buildBody() {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff295872), Color(0xff8dbeda)])),
        child: ListView(
          children: [
            SizedBox(height: 80),
            SizedBox(
              width: 200,
              height: 200,
              child: Icon(Icons.account_circle_rounded, size: 180),
            ),
            Container(
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey.shade400),
                  child: Text(
                    'Redefinir Senha',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ));
  }

  widgetTextFieldPerson() {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: (BorderRadius.all(Radius.circular(30)))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.blue)),
          prefixIcon: Icon(Icons.person),
          filled: true,
          fillColor: Colors.blue.shade100),
    );
  }

  widgetTextFieldLock() {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: (BorderRadius.all(Radius.circular(30))),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.blue)),
          prefixIcon: Icon(Icons.lock),
          filled: true,
          fillColor: Colors.blue.shade100),
    );
  }
}
