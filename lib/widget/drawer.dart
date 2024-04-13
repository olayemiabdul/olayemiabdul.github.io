import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:white_snow_garden/gutterClearance.dart';
import 'package:white_snow_garden/our_work.dart';
import 'package:white_snow_garden/widget/contact_form.dart';
import 'package:white_snow_garden/widget/home_widget.dart';
import 'package:white_snow_garden/widget/model.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SideMenuData menu = SideMenuData();
    return Drawer(
      shadowColor: Colors.white,

      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.green,
            //     image: DecorationImage(
            //       fit: BoxFit.fill,
            //       image: AssetImage('assets/images/logo.png'),
            //     ),
            //   ),
            //   child: Text(
            //     'Menu',
            //     style: TextStyle(color: Colors.white, fontSize: 25),
            //   ),
            // ),
            ListTile(
              leading: const Icon(Icons.search),
              title: RichText(
                text: const TextSpan(
                  text: 'Lawn',
                  style: TextStyle(
                      fontFamily: 'ConcertOne',
                      color: Colors.blueAccent,
                      fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' care',
                      style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Colors.blue,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OurWorkPage()),
                ),
              },
            ),
            ListTile(
              leading: const Icon(Icons.verified_user),
              title: RichText(
                text: const TextSpan(
                  text: 'Our',
                  style: TextStyle(
                      fontFamily: 'ConcertOne',
                      color: Colors.brown,
                      fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Work',
                      style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Colors.brown,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GutterClearancePage (),
                  ),
                ),
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: RichText(
                text: const TextSpan(
                  text: 'Home',
                  style: TextStyle(
                      fontFamily: 'ConcertOne',
                      color: Colors.deepOrangeAccent,
                      fontSize: 20),
                  children: <TextSpan>[

                  ],
                ),
              ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const HomePage()),);
                },
            ),
            ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) =>  ContactFormPage(),
                  ),
                );
              },
              leading: const Icon(Icons.border_color),
              title: RichText(
                text: const TextSpan(
                  text: 'Contact ',
                  style: TextStyle(
                      fontFamily: 'ConcertOne',
                      color: Colors.deepOrangeAccent,
                      fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Us',
                      style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Colors.deepOrangeAccent,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}