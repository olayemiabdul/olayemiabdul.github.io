
import 'package:flutter/material.dart';
import 'package:white_snow_garden/gutterClearance.dart';
import 'package:white_snow_garden/our_work.dart';

import 'package:white_snow_garden/responsive/responsiveness.dart';
import 'package:white_snow_garden/widget/contact_form.dart';
import 'package:white_snow_garden/widget/home_widget.dart';

class AppbarContainer extends StatelessWidget {
  
  const AppbarContainer({

    super.key, this.color,

  });
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final isDesktop= Responsive.isDesktop(context);
    return Container(
      color: Colors.black,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child:isDesktop? Wrap(

          alignment: WrapAlignment.start,
          spacing: 2.0,
          runSpacing: 5.0,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(left: 3, top: 3),
                height: 35,
                width: 220,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: RichText(
                  text: const TextSpan(
                    text: 'WhiteSnow',
                    style: TextStyle(
                        fontFamily: 'ConcertOne',
                        color: Colors.white,
                        fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Garden care',
                        style: TextStyle(
                            fontFamily: 'ConcertOne',
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 100,
            ),
            InkWell(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const OurWorkPage(),
                  ),
                );
              },

              child: RichText(
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
            ),
            const SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const GutterClearancePage(),
                  ),
                );
              },
              child: RichText(
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
            ),
            const SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const HomePage()),);
              },
              child: RichText(
                text: const TextSpan(
                  text: 'Home',
                  style: TextStyle(
                      fontFamily: 'ConcertOne',
                      color: Colors.amber,
                      fontSize: 20),
                  // children: <TextSpan>[
                  //
                  //   TextSpan(text: ' care', style: TextStyle(
                  //       fontFamily: 'ConcertOne',
                  //       color: Colors.white,
                  //       fontSize: 20
                  //
                  //   ),),
                  // ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {},
              child: RichText(
                text: const TextSpan(
                  text: 'About',
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
            const SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) =>  const TheContactPage(),
                  ),
                );
              },
              child: RichText(
                text: const TextSpan(
                  text: 'Contact',
                  style: TextStyle(
                      fontFamily: 'ConcertOne',
                      color: Color(0xff145A32),
                      fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Us',
                      style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Color(0xff145A32),
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 22,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(left: 3, top: 3),
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.deepOrange,
                  border: Border.all(
                    color: Colors.brown,
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Get',
                      style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Colors.white,
                          fontSize: 20),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Free Quote',
                          style: TextStyle(
                              fontFamily: 'ConcertOne',
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ):
        Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(left: 3, top: 3),
                height: 35,
                width: 220,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: RichText(
                  text: const TextSpan(
                    text: 'WhiteSnow',
                    style: TextStyle(
                        fontFamily: 'ConcertOne',
                        color: Colors.white,
                        fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Garden care',
                        style: TextStyle(
                            fontFamily: 'ConcertOne',
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 100,
            ),
            InkWell(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const OurWorkPage(),
                  ),
                );
              },

              child: RichText(
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
            ),
            const SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () =>
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GutterClearancePage (),
                  ),
                ),

              child: RichText(
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
            ),
            const SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const HomePage()),);
              },
              child: RichText(
                text: const TextSpan(
                  text: 'Home',
                  style: TextStyle(
                      fontFamily: 'ConcertOne',
                      color: Colors.amber,
                      fontSize: 20),
                  // children: <TextSpan>[
                  //
                  //   TextSpan(text: ' care', style: TextStyle(
                  //       fontFamily: 'ConcertOne',
                  //       color: Colors.white,
                  //       fontSize: 20
                  //
                  //   ),),
                  // ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {},
              child: RichText(
                text: const TextSpan(
                  text: 'About',
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
            const SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const TheContactPage()),);
              },
              child: RichText(
                text: const TextSpan(
                  text: 'Contact',
                  style: TextStyle(
                      fontFamily: 'ConcertOne',
                      color: Color(0xff145A32),
                      fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Us',
                      style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Color(0xff145A32),
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 22,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) =>  ContactFormPage(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(left: 3, top: 3),
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.deepOrange,
                  border: Border.all(
                    color: Colors.brown,
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Get',
                      style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Colors.white,
                          fontSize: 20),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Free Quote',
                          style: TextStyle(
                              fontFamily: 'ConcertOne',
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}