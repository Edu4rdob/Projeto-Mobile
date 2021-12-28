class SplashPage extends StatefulWidget{
  const SplashPage ({Key key}) : super(key:key);

  @override
  _SplashageState createState() => _SplashPageState();
}

class _SplashageState extends State<SplashPage> {
  @override
  initState(){
    super.initState();
    _loadData();
  }
  
  _loadData() async{
    SharedPreferencesHelper sharedPreferences = SharedPreferencesHelper();
    bool isLogged = await sharedPreferences.getUser9();

    await Future.delayed(Duration(seconds: 3));

    if(isLogged){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => TelaPlantoes(),
        ), //MaterialPageRoute
      );
    }else{
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => TelaLoginPage(),
        ), //MaterialPageRoute
      );
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Color(0xFF4292BF),
        body: buildBody(),
    );
  }

  buildBody(){
    return Column(
        MainAxisAlignment: MainAxisAlignment.center,
        children: [  
          Center(child: CircularProgressIndicator(
            color: Colors.white,
          )),
        ],
    ); 
  }

}
