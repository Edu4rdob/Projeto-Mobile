import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/cadastro_pt1.dart';
import 'package:flutter_application_1/ui/cadastro_pt2.dart';
import 'package:flutter_application_1/ui/chat.dart';
import 'package:flutter_application_1/ui/historico.dart';
import 'package:flutter_application_1/ui/tela-configuracao-usu.dart';
import 'package:flutter_application_1/ui/tela_Gerenc_plantoes.dart';
import 'package:flutter_application_1/ui/tela_login.dart';
import 'package:flutter_application_1/ui/tela_plantoes_registrados.dart';
import 'package:flutter_application_1/ui/telas_plantoes_ativos.dart';
import 'package:flutter_application_1/ui/troca.dart';
import 'package:flutter_application_1/ui/usuario-master.dart';
import 'package:flutter_application_1/ui/validar_email.dart';
import 'package:path/path.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaLoginPage(),
      routes: {
        '/login': (context) => const TelaLoginPage(),
        '/cadastro-pt1': (context) => const FormPage(),
        '/cadastro-pt2': (context) => const FormPage2(),
        '/chat': (context) => const Chat(),
        '/historico': (context) => const HistoricoPage(),
        '/tela-gerenciar-plantoes': (context) => const TelaGerenciarPlantoes(),
        '/tela-plantoes-registrados': (context) =>
            const TelaPlantoesRegistrados(),
        '/tela-configuracao-usuario': (context) => const SettingPage(),
        '/tela-plantoes-ativos': (context) => const TelaPlantoes(),
        '/tela-trocar-senha': (context) => const Troca(),
        '/usuario-master': (context) => const UsuarioMaster(),
        '/validar-email': (context) => const ValidateEmail(),
      },
    ),
  );
}
