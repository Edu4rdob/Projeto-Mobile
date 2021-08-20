import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Historico",
      debugShowCheckedModeBanner: false,
      home: HistoricoPage(),
    ),
  );
}

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({Key? key}) : super(key: key);

  @override
  _HistoricoPageState createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {
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
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.settings, size: 35))),
          ListTile(
            title: const Text('ÍNICIO'),
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
    title: Align(alignment: Alignment.center, child: Text('HISTÓRICO')),
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
  return Row(
    children: <Widget>[
      Expanded(
        flex: 6,
        child: Container(
          padding: EdgeInsets.only(bottom: 15),
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
            ListTile(
              title: Container(
                decoration: myBoxDecoration(),
                child: ListTile(
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'PLANTÃO',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            buildContainerText('PLANTAO CLÍNICO GERAL', 'DRA ADA', '24',
                Colors.orange, '09/12\n'),
            buildContainerText('PLANTAO CARDIOLOGIA', 'DRA ADA', '12',
                Colors.green.shade500, '08/12\n'),
            buildContainerText('PLANTAO PEDIÁTRICO', 'DRA ADA', '12',
                Colors.green.shade500, '07/10\n'),
            buildContainerText('PLANTAO PEDIÁTRICO', 'DRA ADA', '12',
                Colors.green.shade500, '07/10\n'),
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
              ListTile(
                  title: Container(
                decoration: myBoxDecoration(),
                child: ListTile(
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'STATUS',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )),
              buildContainerTipo(1),
              buildContainerTipo(1),
              buildContainerTipo(0),
              buildContainerTipo(1),
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

buildContainerText(
    String plantao, String nome, String tipo, Color color, String data) {
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
        leading: Text(data, style: TextStyle(color: Colors.grey)),
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

buildContainerTipo(int op) {
  if (op == 1) {
    return Container(
      decoration: myBoxDecoration(),
      child: ListTile(
        title: Align(
            alignment: Alignment.center,
            child: ListTile(
              title: Icon(
                Icons.check_circle_outline,
                size: 36,
                color: Colors.green.shade500,
              ),
              subtitle: Text('CONCLUÍDO',
                  style: TextStyle(fontSize: 10, color: Colors.white)),
            )),
      ),
    );
  } else {
    return Container(
      decoration: myBoxDecoration(),
      child: ListTile(
        title: Align(
            alignment: Alignment.center,
            child: ListTile(
              title: Icon(
                Icons.cancel_outlined,
                size: 36,
                color: Colors.red.shade700,
              ),
              subtitle: Text('CANCELADO',
                  style: TextStyle(fontSize: 10, color: Colors.white)),
            )),
      ),
    );
  }
}
