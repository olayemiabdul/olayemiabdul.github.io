import 'package:flutter/material.dart';
import 'package:white_snow_garden/our_work.dart';


class SideMenuData{
  final menuList=<MenuModel>[
    MenuModel(Icons.home, 'Dashboard', getH),
    MenuModel(Icons.person, 'profile',getO),
    MenuModel(Icons.read_more, 'Read', (){}),
    MenuModel(Icons.settings, 'Settings' , (){}),
    MenuModel(Icons.history_edu, 'History', (){}),
    MenuModel(Icons.logout, 'Logout', (){}),


  ];

}

getH(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder:(context)=>const OurWorkPage()));
}

class MenuModel{
  final IconData icon;
  final String text;
  final Function function;
  MenuModel(this.icon,  this.text, this.function);
}

getO(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder:(context)=>const OurWorkPage()));
}