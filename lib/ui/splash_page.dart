import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/dao/usuario_dao.dart';
import 'package:flutter_application_1/data/shared_preferences_helper.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage>{
    @override
    void initState(){
      iniciarTela(context);
      super.initState();
      
    }

     _loadData() async{
      SharedPreferencesHelper sharedPreferences = SharedPreferencesHelper();
      Map<String, String> logado = await sharedPreferences.getUser();

      String user = logado['user']!;
      String senha = logado['senha']!;
      
      final data = await UsuarioDao().login(usuarionome: user, senhausu: senha);
      if(user == 'marie_curie02' || user.isNotEmpty){
        Navigator.pushNamed(context, '/tela-plantoes-ativos', arguments: data[0]);
      }else{
        Navigator.popAndPushNamed(context, '/login');
      }
      }
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  buildBody() {
    return Center(
      child: CircularProgressIndicator(),
    );

  }

  void iniciarTela(context) {
     Future.delayed(const Duration(milliseconds: 2000)).then((value) {
      _loadData();
    });
  }
}