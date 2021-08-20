import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TelaPlantoes extends StatefulWidget {
  const TelaPlantoes({Key? key}) : super(key: key);

  @override
  _TelaPlantoesState createState() => _TelaPlantoesState();
}

class _TelaPlantoesState extends State<TelaPlantoes> {
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
              title: const Text(
                'DRA. ADA LOVELACE',
              ),
              subtitle: const Text('Hospital Alan Turing'),
              leading: Icon(Icons.account_circle_rounded, size: 50),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.settings, size: 35))),
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
      IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    ],
    title: Align(alignment: Alignment.center, child: Text('MEUS PLANTÕES')),
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
            buildContainerText('PLANTAO CLÍNICO GERAL', 'DRA. ADA LOVELACE',
                '24', Colors.green.shade500),
            buildContainerText(
                'PLANTAO CARDIOLOGIA', 'DRA. MARIE CURIE', '12', Colors.orange),
            buildContainerText(
                'PLANTAO PEDIÁTRICO', 'DRA. ADA LOVELACE', '12', Colors.orange),
          ]),
          //color: Colors.blue
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [Color(0xff295872), Color(0xff8dbeda)]),
          ),
          child: ListView(
            children: [
              buildContainerTipo('09/02', '12:00h'),
              buildContainerTipo('05/02', '12:00h'),
              buildContainerTipo('03/02', '04:00h'),
            ],
          ),
          //  color: Colors.blue
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
