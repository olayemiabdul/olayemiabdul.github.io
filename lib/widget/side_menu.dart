
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:white_snow_garden/our_work.dart';
import 'package:white_snow_garden/widget/model.dart';


class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  SideMenuData menu = SideMenuData();
  int selectedMenuIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: const Color(0xFF171821),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 20),
        child: ListView.builder(
            itemCount: menu.menuList.length,
            itemBuilder: (context, index) => buildMenuEntry(menu, index)),
      ),
    );
  }

  buildMenuEntry(SideMenuData menu, int index) {
    final isSelectedMenu=selectedMenuIndex==index;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration:  BoxDecoration(

        borderRadius: const BorderRadius.all(Radius.circular(6),
        ),
        color: isSelectedMenu?Colors.amber:Colors.grey,

      ),
      child: InkWell(
        onTap: (){
          setState(() {
            selectedMenuIndex=index;
          });menu.menuList[index].function.toString();

          //Navigator.push(context, MaterialPageRoute(builder:(context)=>const OurWorkPage()));
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 10),
              child: Icon(
                  menu.menuList[index].icon,
                  color: isSelectedMenu?Colors.black:Colors.grey
              ),
            ),

             RichText(
               softWrap: false,
              text:TextSpan(
                children: [
                  TextSpan(text: menu.menuList[index].text.toString(),),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
