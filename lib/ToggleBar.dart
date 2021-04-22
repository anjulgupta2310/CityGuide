import 'package:flutter/material.dart';
import "package:firstapp/Picture.dart";



class ToggleBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Drawer Layout Demo',
     // debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
          appBar: AppBar(
            title: Text('City Guide'),
            
          
          ),
          body:Picture(),
          backgroundColor:Colors.grey[500],
          drawer: Drawer(
          elevation: 40.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Ayush Yadav'),
                accountEmail: Text('ayushyadav2905@gmail.com'),
                currentAccountPicture:
                Image.network('https://hammad-tariq.com/img/profile.png'),
                decoration: BoxDecoration(color: Colors.blueAccent),
              ),
              ListTile(
                leading: Icon(Icons.hotel),
                title: Text('Hotel'),
                onTap: () {
                  // This line code will close drawer programatically....
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About the App'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.account_box),

                title: Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          )),
    ));
  }
}