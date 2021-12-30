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

      /*saveUser(Usuario usuario){
        Usuario user = usuario;
        return user;
      }
      readUser() async{
        return saveUser;
      }
      Future<bool> getUser() async{
        SharedPreferences instance = await _getInstance;
        bool? user = instance.getBool('user');

        if(user == null){
          return false;
        } 
        return user;
      }
}

*/


      /*saveUser(String user) async{
        SharedPreferences instance = await _getInstance;
        instance.setString('user', user);
      }
      Future<bool> getUser() async{
        SharedPreferences instance = await _getInstance;
        bool? user = instance.getBool('user');
        if(user == null){
          return false;
        } 
        return user;
      }*/


      
      
      
      
      /*setUser(String status) async{
        SharedPreferences instance = await _getInstance;
        await instance.setString('nomeUse', status);
      }

      getUser(Usuario usuario) async{
        SharedPreferences instance = await _getInstance;
        usuario = usuario;
        if(usuario == null){
          return false;
        } 
        return usuario;
      }
      /*setUser(bool status) async{
        SharedPreferences instance = await _getInstance;
        await instance.setBool('nome_user', status);
      } 
      Future<bool> getUser() async{
        SharedPreferences instance = await _getInstance;
        bool? user = instance.getBool('nome_user');

        if(user == null){*/
*/
