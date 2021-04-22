import 'package:flutter/material.dart';
import 'Img.dart';
import 'package:url_launcher/url_launcher.dart';
import 'location_service.dart';
class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
      child:
     Container(
       padding:EdgeInsets.all(25),
       color:Colors.pink[100],
       child:Column(
         children:[
           Text('Anjul Da Dhabha',
           style:TextStyle(

             fontSize:40,
             
             
           ),
           

           ),
           
           
                      
           Img(),
           Text("Description",
                style:TextStyle(
                  fontSize:30,
                  
                
                )),
           Text("If you want to eat delicious food then please registor in the following link",
                  style:TextStyle(
                    fontSize:20,
                  )
                  ),
            Text("Links",
                style:TextStyle(
                  fontSize:25,
                )),
            
            Center(
           child: new InkWell(
              child: new Text('www.google.com',
              style:TextStyle(fontSize: 20,
                  color: Colors.blue[300] )),
              onTap: () => launch('https://www.google.com')
          ),
            ),
                  MaterialButton(
                       color:Colors.indigo,
                      textColor: Colors.white,
                      child:new Text("Skip>>"),
                      
                       onPressed: () => {
                         Navigator.push(context,
                         MaterialPageRoute(builder:(context)=> GPS()) )   
                       }
                  )
         
         ]
         
     ) 
     
        
     ) 
      );
  }
}








