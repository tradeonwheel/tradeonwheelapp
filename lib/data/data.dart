import 'package:flutter/material.dart';
import 'package:trade_on_wheel/assets.dart';

class Categorys {
  final String image, title,vehicleType;
  final int size, id;
  Categorys({this.id,this.image,this.title,this.size,this.vehicleType});
}
List<Categorys> categories = [
  Categorys(id: 1,title: "Car", image: Assets.cars,vehicleType:'new'),
  Categorys(id: 2, title: "Bike",image: Assets.bike,vehicleType: 'new'),
  Categorys(id: 3,title: "Commercial",image: Assets.commercial,vehicleType: 'new'),
  Categorys(id: 4,title: "Car", image: Assets.cars,vehicleType: 'used'),
  Categorys(id: 5, title: "Bike",image: Assets.bike,vehicleType: 'used'),
  Categorys(id: 6,title: "Commercial",image: Assets.commercial,vehicleType: 'used'),
  Categorys(id: 7,title: "Auction",image: Assets.commercial,vehicleType: 'used'),
];

class Vehicle {
  final String image, name,vehicleType,brand;
  final int price, id,year,totalDrived;
  final Color color;
  Vehicle({this.id,this.image,this.name,this.price,this.year,this.totalDrived,this.vehicleType,this.color,this.brand});
}
List<Vehicle> vehicles = [
  Vehicle(
      id: 1, name: "Bugati Chiron", price:200000,year:2001,
      totalDrived: 2000,image: Assets.main_banner,vehicleType:"Car",
      color: Color(0xFF3D82AE),brand:'Suzuki'
  ),
  Vehicle(
      id: 2, name: "Swift Desire", price:200000, year:2001, totalDrived: 2000,
      image: Assets.swift, vehicleType:"Car", color: Color(0xFF3D82AE),brand: 'Suzuki'
  ),
  Vehicle(
      id: 3, name: "Nissan Magnite", price:200000, year:2001,
      totalDrived: 2000, image: Assets.magnite, vehicleType:"Commercial",
      color: Color(0xFF3D82AE),brand: 'Tata'
  ),
  Vehicle(
      id: 4, name: "Kia Sonet", price:200000, year:2001,
      totalDrived: 2000, image: Assets.sonet, vehicleType:"Car",
      color: Color(0xFF3D82AE),brand: 'honda'
  ),
  Vehicle(
      id: 5, name: "Bullet Classic 350", price:200000, year:2001,
      totalDrived: 2000, image: Assets.classic_350, vehicleType:"Bike",
      color: Color(0xFF3D82AE),brand: 'Hero'
  ),
];

class UserDetails {
  final String name, profilePic,email,password,phone;
  final int id;
  UserDetails({this.id,this.name,this.profilePic,this.email,this.password,this.phone});
}
List<UserDetails> userdetails = [
  UserDetails(id: 1,name: "Abhishek",email: 'abhikp002@gmail.com',phone: '9415890976', profilePic: Assets.cars,password: 'abc123'),
  UserDetails(id: 2,name: "Vijay",email: 'vijay@gmail.com',phone: '9415890977', profilePic: Assets.bike,password: 'abc123'),
];

class BrandName {
  final String image, name,vehicleType;
  final int size, id;
  BrandName({this.id,this.image,this.name,this.size,this.vehicleType});
}
List<BrandName> brandlist = [
  BrandName(id: 1,name: "Hero", image: Assets.hero,vehicleType:"Bike"),
  BrandName(id: 2, name: "Honda",image: Assets.honda,vehicleType: "Car"),
  BrandName(id: 3, name: "Hundai",image: Assets.hundai,vehicleType: "Car"),
  BrandName(id: 4, name: "Suzuki",image: Assets.suzuki,vehicleType: "Bike"),
  BrandName(id: 5, name: "Tata",image: Assets.tata,vehicleType: "Car"),
  BrandName(id: 6, name: "Suzuki",image: Assets.suzuki_car,vehicleType: "Car"),
  BrandName(id: 7, name: "Tvs",image: Assets.tvs,vehicleType: "Bike"),
  BrandName(id: 8, name: "Mahindra",image: Assets.mahindra,vehicleType: "Car"),

];