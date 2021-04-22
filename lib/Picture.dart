import 'package:flutter/material.dart';
import 'package:firstapp/Final.dart';
class Picture extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    AssetImage assetImage1=new AssetImage('images/restaurant.jpg',);
    Image image1=new Image(image:assetImage1,);
    AssetImage assetImage2=new AssetImage('images/Hotel.jpeg');
    Image image2=new Image(image:assetImage2,);
    AssetImage assetImage3=new AssetImage('images/Railway Stattions.jpeg');
    Image image3=new Image(image:assetImage3,);
    AssetImage assetImage4=new AssetImage('images/Bus Statnds.jpeg');
    Image image4=new Image(image:assetImage4,);
    AssetImage assetImage5=new AssetImage('images/Parks.jpeg',);
    Image image5=new Image(image:assetImage5,);
    AssetImage assetImage6=new AssetImage('images/Acients Monuments.jpeg');
    Image image6=new Image(image:assetImage6,);
    AssetImage assetImage7=new AssetImage('images/Malls.jpeg');
    Image image7=new Image(image:assetImage7,);
    AssetImage assetImage8=new AssetImage('images/volleyball poster.jpg');
    Image image8=new Image(image:assetImage8,);
    AssetImage assetImage9=new AssetImage('images/bangalore_7.jpeg');
    Image image9=new Image(image:assetImage9,);
    
    return GridView.count(
      primary:true,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount:2 ,
    
      children: <Widget>[
        Container(
          
          padding:const EdgeInsets.all(8),
          child:Column(children: <Widget>[
            image1,
            InkWell(
            child:Text('Restaurant',
                style:TextStyle(fontSize:20),
                 ),
                 onTap: ()=>
                 {
                   Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Final())),
                 } 

            )

          ],
          
          ),
          
          

        ),
        Container(
          padding:const EdgeInsets.all(8),
          
          child:Column(children: <Widget>[
            image2,
            InkWell(
            child:Text('Hotels',
                style:TextStyle(fontSize:20),
                 ),
                 onTap: ()=>
                 {
                   Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Final())),
                 } 

            )

          ],
          ),
          
        ),
        Container(
          padding:const EdgeInsets.all(8),
          
          child:Column(children: <Widget>[
            image3,
            InkWell(
            child:Text('Railway Stattions',
                style:TextStyle(fontSize:20),
                 ),
                 onTap: ()=>
                 {
                   Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Final())),
                 } 

            )

          ],
          ),
          
        ),
        Container(
          padding:const EdgeInsets.all(8),
          
          child:Column(children: <Widget>[
            image4,
            InkWell(
            child:Text('Bus Stands',
                style:TextStyle(fontSize:20),
                 ),
                 onTap: ()=>
                 {
                   Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Final())),
                 } 

            )

          ],
          ),
          
        ),
        Container(
          padding:const EdgeInsets.all(8),
          
          child:Column(children: <Widget>[
            image5,
            InkWell(
            child:Text('Parks',
                style:TextStyle(fontSize:20),
                 ),
                 onTap: ()=>
                 {
                   Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Final())),
                 } 

            )

          ],
          ),
         
        ),
        Container(
          padding:const EdgeInsets.all(8),
          
          child:Column(children: <Widget>[
            image6,
            InkWell(
            child:Text("Ancients Monuments",
                style:TextStyle(fontSize:20),
                 ),
                 onTap: ()=>
                 {
                   Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Final())),
                 } 

            )

          ],
          ),
          
          

        ),
        Container(
          padding:const EdgeInsets.all(8),
          
          child:Column(children: <Widget>[
            image7,
            InkWell(
            child:Text('Shopping mall',
                style:TextStyle(fontSize:20),
                 ),
                 onTap: ()=>
                 {
                   Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Final())),
                 } 

            )

          ],
          ),
          
        ),
        Container(
          padding:const EdgeInsets.all(8),
          
          child:Column(children: <Widget>[
            image8,
            InkWell(
            child:Text('Playgrounds',
                style:TextStyle(fontSize:20),
                 ),
                 onTap: ()=>
                 {
                   Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Final())),
                 } 

            )

          ],
          ),
          
        ),
        Container(
          padding:const EdgeInsets.all(8),
          
          child:Column(children: <Widget>[
            image9,
            Text('Book Store',
                style:TextStyle(fontSize:20)
                 )

          ],
          ),
          
        ),


      ],
    );

  }
}
