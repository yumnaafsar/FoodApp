import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen() ,
    );
  }
}

Widget abcd(String name,String image,double price){
  return ListTile(leading:CircleAvatar(backgroundImage: AssetImage(image),),
                    title:Text(name,style:TextStyle(fontWeight:FontWeight.bold )),
                    subtitle: Row(
                        children: [
                          Icon(Icons.star,color: Colors.yellow,size: 15,),
                          SizedBox(width:5),
                           Text(price.toString()), ],), 
                    );
}


