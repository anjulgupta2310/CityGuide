import 'package:flutter/material.dart';

class Img extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
      
    AssetImage assetImage=AssetImage('images/restaurant.jpg',
      
        );
    //AssetImage anjul=AssetImage('images/iiitvlogo.png');
        
        
         
    Image image=Image(image:assetImage);
    //Image aim=Image(image:anjul);
    return Column(children:[
    Container(child:image,
    width:230,
    height:230)

    //Container(child:aim,
    //width:230,
    //height:230),
     //Text("hello guys how are you"),
    
    ]
    )
;
    
    }    
  
}