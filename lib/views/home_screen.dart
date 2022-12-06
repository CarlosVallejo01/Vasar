import 'package:login_signup/utils/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{



  @override
  Widget build(BuildContext context)
  {


    return Scaffold(
        backgroundColor: Colors.transparent,

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(205, 193, 255, 1.0),
              Color.fromARGB(255, 252, 99, 99),
              Color.fromARGB(255, 173, 41, 1),
            ],
          ),
        ),
        padding: EdgeInsets.fromLTRB(
            10,
            AppBar().preferredSize.height +
                MediaQuery.of(context).viewPadding.top,
            10,
            0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 300.0,),
              child: Text("¡Bienvenido!", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 55.0)),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0,),
              child: Text("¡Ahora estas listo para usar vasar!", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 25.0)),
            ),

            Container(
              constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
              margin: EdgeInsets.only(top: 30),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Vamos!',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
    )
    );
  }
}
