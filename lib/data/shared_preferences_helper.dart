
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper{
      Future<SharedPreferences> get _getInstance => SharedPreferences.getInstance(); 

      setUser(bool status) async{
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
      } 
}