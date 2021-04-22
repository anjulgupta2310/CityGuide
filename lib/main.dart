import 'package:flutter/material.dart';
import "package:firstapp/ToggleBar.dart";


void main() { runApp(new MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home:new LoginPage(),
        theme: new ThemeData(
            primarySwatch:Colors.blue
        )
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  @override
  void initState(){
    super.initState();
    _iconAnimationController =new AnimationController(
        vsync: this,
        duration: new Duration(milliseconds: 500)
    );
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeOut
    );
    _iconAnimation.addListener(()=>this.setState((){}));
    _iconAnimationController.forward();
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        fit:StackFit.expand,
        children: <Widget>[

          new Image(
            image: new AssetImage('images/city.jpg'),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value*100,

              ),
              new Form(
                  child: new Theme(
                    data: new ThemeData(
                        brightness: Brightness.dark,primarySwatch: Colors.teal,
                        inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                                color: Colors.teal,fontSize: 20.0
                            )
                        )
                    ),
                    child:new Container(
                      padding: const EdgeInsets.all(20.0),
                    child: new Column(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Email",

                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0),
                        ),
                        new MaterialButton(

                            color:Colors.teal,
                            textColor: Colors.white,
                            child:new Text("Login"),
                             onPressed: () {
                               fireBase(context);
                             },

                        ),

                     new MaterialButton(
                       color:Colors.indigo,
                      textColor: Colors.white,
                      child:new Text("Skip>>"),
                      
                       onPressed: () => 
                         Navigator.push(context,
                         MaterialPageRoute(builder:(context)=>ToggleBar()))

                         
                       
                      )
                      ],
                    ),
                  ),
              )
              )
            ],
          )
        ],
      ),
    );
  }
}

  void fireBase(BuildContext context)
  {
     var alertDialog =AlertDialog(
       title: Text("FireBase Error"),
       content: Text("FireBase authorization failed"),
     );
     showDialog(
       context: context,
        builder: (BuildContext context)
     {
       return alertDialog;
     }

     );
  }


