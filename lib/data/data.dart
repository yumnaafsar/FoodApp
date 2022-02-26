import 'package:food_app/screens/models/food.dart';
import 'package:food_app/screens/models/resturants.dart';

//Food

var _pizza=Food(imgUrl: 'assets/images/pizza.jpg', name:"Pizza" , price:1000);
var _burger=Food(imgUrl: 'assets/images/burger.jpg', name:"Burger", price:300);
var _fries=Food(imgUrl: 'assets/images/pizzaFries.jpg', name: "Pizza Fries", price:150);
var _steak=Food(imgUrl:'assets/images/steak.jpg', name:"Steak" , price:850);
var _lasagna=Food(imgUrl: 'assets/images/lasagna.jpg', name: "lasagna", price:350);
var _wings=Food(imgUrl: 'assets/images/chicken_wings.jpg', name: "Chicken Wings", price:250);
var _nuggets=Food(imgUrl: 'assets/images/nuggets.jpg', name: "Nuggets", price:200);
var _roll=Food(imgUrl: 'assets/images/roll.jpg', name: "Roll", price:130);
var _sandwiches=Food(imgUrl: 'assets/images/sandwiches.jpg', name: "Sandwiches", price:220);


//Resturants

var resturant1= Resturant(name:"Resturant 1" ,address:"karachi abc1" ,rating:8 ,imgUrl:'assets/images/resturant1.jpg' ,menu:[_pizza,_burger,_sandwiches] );
var resturant2= Resturant(name:"Resturant 2" ,address:"karachi abc2" ,rating:7.5 ,imgUrl:'assets/images/resturant2.jpg' ,menu:[_lasagna,_roll,_wings] );
var resturant3= Resturant(name:"Resturant 3" ,address:"karachi abc3" ,rating:9 ,imgUrl:'assets/images/resturant3.jpg' ,menu:[_steak,_nuggets,_fries] );
var resturant4= Resturant(name:"Resturant 4" ,address:"karachi abc4" ,rating:8 ,imgUrl:'assets/images/resturant4.png' ,menu:[_pizza,_roll,_wings] );

List<Resturant> resturants=[
     resturant1,
     resturant2,
     resturant3,
     resturant4,
];

List<Food> food=[
  _pizza,
  _burger,
  _fries,
  _steak,
  _lasagna,
  _wings,
  _nuggets,
  _roll,
  _sandwiches,
];