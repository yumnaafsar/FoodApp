import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/screens/models/resturants.dart';
import 'package:food_app/screens/models/food.dart';

class DetailClass extends StatefulWidget {
   Resturant resturant;
  DetailClass({required this.resturant});
  @override
  _DetailClassState createState() => _DetailClassState();
}

class _DetailClassState extends State<DetailClass> {
 
_buildfood(){
    List<Widget> foodList=[];

    food.forEach((Food foods) {
      
      foodList.add(
       Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1.0,
            color: Colors.grey,
          )
          ),

          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(image: AssetImage(foods.imgUrl),
                height: 150.0,
                width: 150.0,
                fit: BoxFit.cover, 
                ),
              ),
              Container(
                margin: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(foods.name,style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                    SizedBox(height:3.0),
                    Row(
                      children: [
                        Text((foods.price).toString(),style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                    
                  ],
                ),
              )
            ],
          ),
      ),

      );
    }
    );

     return Column(
      children: foodList,
    );

/*Widget food(String name,String image,double price){
  return ListTile(leading:CircleAvatar(backgroundImage: AssetImage(image),),
                    title:Text(name,style:TextStyle(fontWeight:FontWeight.bold )),
                    subtitle: Row(
                        children: [
                          Icon(Icons.star,color: Colors.yellow,size: 15,),
                          SizedBox(width:5),
                           Text(price.toString()), ],), 
                    );
}*/
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.account_circle),iconSize: 30.0, onPressed: () {  },),
        title: Text('Food Delivery Service'),),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 1)
                ),
                hintText: 'Find food or resturants',
                prefixIcon: Icon(Icons.search,size: 30.0,),
                suffixIcon: Icon(Icons.clear,size: 30.0,)
              ),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                _buildfood(),
                  ],
                ),
              ),
            ],
          )

        ],
      ),
    );
  }

}