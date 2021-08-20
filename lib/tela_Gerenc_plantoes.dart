import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TelaGerenciarPlantoes extends StatefulWidget {
  const TelaGerenciarPlantoes({Key? key}) : super(key: key);

  @override
  TelaGerenciarPlantoesState createState() => TelaGerenciarPlantoesState();
}

class TelaGerenciarPlantoesState extends State<TelaGerenciarPlantoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
      floatingActionButton: buildIconAppBar(),
      drawer: buildDrawer(context),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Color.fromRGBO(66, 165, 245, 1.0),
          ),
          ListTile(
              title: const Text(
                'DRA. ADA LOVELACE',
              ),
              subtitle: const Text('Hospital Alan Turing'),
              leading: Icon(Icons.account_circle_rounded, size: 50),
              trailing: Icon(Icons.settings, size: 30)),
          ListTile(
            title: const Text('ÍNICIO'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('CAIXA DE ENTRADA'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('GERENCIAR PLANTÕES'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('PLANTÕES GERENCIADOS'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('RELATÓRIO'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('SAIR'),
            onTap: () {
              Navigator.pop(context);
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
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    ],
    title:
        Align(alignment: Alignment.center, child: Text('GERENCIAR PLANTÕES')),
    backgroundColor: Color(0xff204559),
  );
}

buildIconAppBar() {
  return FloatingActionButton(
    child: Icon(
      Icons.message_rounded,
      size: 30,
    ),
    backgroundColor: Color(0xff295872),
    onPressed: () {},
  );
}

buildBody() {
  return buildRow();
}

buildRow() {
  return Row(
    children: <Widget>[
      Expanded(
        flex: 6,
        child: Container(
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
            Container(
              decoration: myBoxDecoration(),
              child: ListTile(
                title: Text(
                  'PLANTÃO CARDIOLÓGICO (10/03)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Container(
                  width: 100,
                  child: Row(children: <Widget>[
                    Icon(Icons.cancel, size: 30),
                    Icon(
                      Icons.change_circle,
                      size: 30,
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              decoration: myBoxDecoration(),
              child: ListTile(
                title: Text(
                  'PLANTÃO CARDIOLÓGICO (10/03)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Container(
                  width: 100,
                  child: Row(children: <Widget>[
                    Icon(Icons.cancel, size: 30),
                    Icon(
                      Icons.change_circle,
                      size: 30,
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              decoration: myBoxDecoration(),
              child: ListTile(
                title: Text(
                  'PLANTÃO CARDIOLÓGICO (10/03)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Container(
                  width: 100,
                  child: Row(children: <Widget>[
                    Icon(Icons.cancel, size: 30),
                    Icon(
                      Icons.change_circle,
                      size: 30,
                    ),
                  ]),
                ),
              ),
            ),
          ]),
          //color: Colors.blue
        ),
      ),
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
