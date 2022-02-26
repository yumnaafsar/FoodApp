import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/screens/detailedPage.dart';
import 'package:food_app/screens/models/resturants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildResturants(){
    List<Widget> resturantList=[];

    resturants.forEach((Resturant resturant) {
      
      resturantList.add(
        GestureDetector(
          onTap: ()=> Navigator.push(context, MaterialPageRoute(
            builder:(context)=>DetailClass(resturant : resturant),
            ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
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
                child: Image(image: AssetImage(resturant.imgUrl),
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
                    Text(resturant.name,style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                    SizedBox(height:3.0),
                    Row(
                      children: [
                        Text((resturant.rating).toString(),style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                         Icon(Icons.star_border_outlined),
                      ],
                    ),
                    SizedBox(height: 3.0),
                    Text(resturant.address,style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                  ],
                ),
              )
            ],
          ),
      ),
      ));
    });

     return Column(
      children: resturantList,
    );

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
                    Text('Nearby Resturants',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                    ),),

                _buildResturants(),
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