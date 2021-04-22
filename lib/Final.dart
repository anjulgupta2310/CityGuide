import 'package:flutter/material.dart';
import 'Page1.dart';


class Final extends StatelessWidget
{   
  Widget build(BuildContext context) {
    
    
  
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:Text("Hello Anjul"),
          automaticallyImplyLeading:true,
        leading:IconButton(icon:Icon(Icons.arrow_back),
          onPressed: ()=>Navigator.pop(context,false),),

        ),
        body:Page1(),//getListView(),
        
          )
         
    );
}
}
Widget  getListView(){
      
      var listView=ListView(
        children:[ListTile(
        leading:Icon(Icons.landscape),
        title:Text("mountains"),
        subtitle:Text("The himalaya"),
        
      
      )
        ]

    );
    return listView;

  
}


