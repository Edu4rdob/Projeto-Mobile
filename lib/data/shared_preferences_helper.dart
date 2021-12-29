
import 'package:flutter_application_1/data/models/usuario.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper{
      Future<SharedPreferences> get _getInstance => SharedPreferences.getInstance(); 

      setUser(bool status) async{
        SharedPreferences instance = await _getInstance;
        await instance.setBool('user', status);

      } 
      saveUser(Usuario usuario){
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

        if(user == null){
          return false;
        } 
        return user;
      } */
      */
}