import 'package:food_app/screens/models/food.dart';

class Resturant{
   String name;
   String address;
   double rating;
   String imgUrl;
   List<Food> menu;

   Resturant({required this.name,required this.address,required this.rating,required this.imgUrl,required this.menu});

}