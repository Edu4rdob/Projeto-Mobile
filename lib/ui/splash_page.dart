
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/shared_preferences_helper.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage>{
    @override
    void initState(){
      super.initState();
      _loadData();
    }

     _loadData() async{
      SharedPreferencesHelper sharedPreferences = SharedPreferencesHelper();
      //String isLogged = await sharedPreferences.getUser(usuario);
      bool isLogged = await sharedPreferences.getUser();
     //final data = await UsuarioDao()
     //.login(usuarionome: usuario, senhausu: senha);

      await Future.delayed(Duration(seconds: 2));
      if(isLogged == true){

        Navigator.pushNamed(
                context,
                '/usuario-master',
                arguments: await sharedPreferences.readUser(),
                
              );
              print('coco');
              print(sharedPreferences.readUser());
      }else{
        print('aee');
        Navigator.pushNamed(context, '/login');
         
         
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

 

}
