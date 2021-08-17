import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter demo',
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: buildBody());
  }
}

buildAppBar() {
  return AppBar(
    backgroundColor: Colors.purple[800],
    title: Align(
      alignment: Alignment.center,
      child: Text('Plantões Cadastrados'),
    ),
  );
}

buildBody() {
  return ListView(
    children: [
      buildListTitle(
        titulo: 'Plantão a',
        doutor: 'Doutora a',
        turno: '8h/12h',
      ),
    ],
  );
}

buildListTitle({String titulo = '', String doutor = '', String turno = ''}) {
  return ListTile(
    title: Text(titulo),
    subtitle: Text(doutor),
    trailing: Text(turno),
  );
}
