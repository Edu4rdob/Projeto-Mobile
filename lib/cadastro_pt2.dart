//import 'package:cwc_flutter/form_screen.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPagesState createState() => _FormPagesState();
}

class _FormPagesState extends State<FormPage> {
  final GlobalKey<_FormPagesState> _formKey = GlobalKey<_FormPagesState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => PacoteDao().cadastroParte2(),
      ),
    ); 
  }
}

buildAppBar() {
  return AppBar(
    leading: IconButton(
        onPressed: () {}, icon: Icon(Icons.keyboard_arrow_left_outlined)),
    title: Align(alignment: Alignment(-0.2, 1.0), child: Text('CADASTRO')),
    backgroundColor: Color(0xff204559),
  );
}

Container buildBody() {
  return Container(
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
                  onPressed: () {},
                ))
          ],
        ),
      ),
    ),
  );
}

Widget builDataField() {
  return TextFormField(
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
    decoration: InputDecoration(
      labelText: 'Digite sua área de atuação',
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
