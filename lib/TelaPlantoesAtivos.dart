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
    title: Align(alignment: Alignment.center, child: Text('MEUS PLANTÕES')),
    backgroundColor: Colors.blue.shade500,
  );
}

buildIconAppBar() {
  return FloatingActionButton(
    child: Icon(
      Icons.message_rounded,
      size: 30,
    ),
    backgroundColor: Colors.blue.shade500,
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
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade400, Colors.blue.shade50]),
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
                    'PLANTAO CARDIOLOGIA',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'DRA. ADA LOVELACE',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.green.shade500,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(
                              30.0) //                 <--- border radius here
                          ),
                    ),
                    child: Text(
                      '24',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
            Container(
              decoration: myBoxDecoration(),
              child: ListTile(
                  title: Text(
                    'PLANTAO CARDIOLOGIA',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'DRA. ADA LOVELACE',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.orange,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(
                              30.0) //                 <--- border radius here
                          ),
                    ),
                    child: Text(
                      '12',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
            Container(
              decoration: myBoxDecoration(),
              child: ListTile(
                  title: Text(
                    'PLANTAO CARDIOLOGIA',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'DRA. ADA LOVELACE',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.orange,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(
                              30.0) //                 <--- border radius here
                          ),
                    ),
                    child: Text(
                      '12',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                  /*Decoration(BorderRadius.circular(5.0), 
              child: Text('24', style: TextStyle(color: Colors.white))*/

                  ),
            ),
          ]),
          //color: Colors.blue
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade300, Colors.blue.shade50]),
          ),
          child: ListView(
            children: [
              Container(
                decoration: myBoxDecoration(),
                child: ListTile(
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '09/02',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  subtitle: Align(
                      alignment: Alignment.center,
                      child: Text('12:00h',
                          style: TextStyle(color: Colors.white))),
                ),
              ),
              Container(
                decoration: myBoxDecoration(),
                child: ListTile(
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '08/08',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  subtitle: Align(
                      alignment: Alignment.center,
                      child: Text('12:00h',
                          style: TextStyle(color: Colors.white))),
                ),
              ),
              Container(
                decoration: myBoxDecoration(),
                child: ListTile(
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '08/12',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  subtitle: Align(
                      alignment: Alignment.center,
                      child: Text('12:00h',
                          style: TextStyle(color: Colors.white))),
                ),
              ),
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
