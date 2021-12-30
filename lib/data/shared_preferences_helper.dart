import 'package:flutter_application_1/data/models/usuario.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper{
      Future<SharedPreferences> get _getInstance => SharedPreferences.getInstance();

      Map<String, String> usuario ={
        'user': 'marie_curie02',
        'senha': '12345678',
      }; 

      setUser(String user, String senha) async{
        SharedPreferences instance = await _getInstance;
        await instance.setString('user', user);
        await instance.setString('senha', senha);
        await getUser();
      }

       getUser() async{
         SharedPreferences instance = await _getInstance;
         final user = instance.getString('user') ?? 'marie_curie02';
         final senha = instance.getString('senha') ?? '12345678';
          usuario = {'user': user, 'senha': senha,};
          return usuario;
         
       }
       sair() async{
        SharedPreferences instance = await _getInstance;
        await instance.remove('user');
        await instance.remove('senha');

       } 


}
