import 'package:flutter/material.dart';
import 'package:white_snow_garden/our_work.dart';
import 'package:white_snow_garden/responsive/responsiveness.dart';
import 'package:white_snow_garden/widget/contact_form.dart';
import 'package:white_snow_garden/widget/home_widget.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop =Responsive.isDesktop(context);
    return SelectionArea(
      child: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: isDesktop?150:0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.start,



                direction: Axis.horizontal,
                spacing: 1.0,
                runSpacing: 0.0,
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
                   SizedBox(
                    width: isDesktop?100:30,
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
                   SizedBox(
                    width: isDesktop?15:5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: RichText(
                      text: const TextSpan(
                        text: 'Services',
                        style: TextStyle(
                            fontFamily: 'ConcertOne',
                            color: Colors.deepOrangeAccent,
                            fontSize: 20),
                        children: <TextSpan>[
                       
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:isDesktop?0: 320),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>  const TheContactPage()),);
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
                  ),


                ],
              ),
            ),
            if (!Responsive.isMobile(context))
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 520,
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      '© White Snow Garden Design 2024',
                      style: TextStyle(
                          fontFamily: 'Satisfy',
                          color: Colors.white,
                          fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'Site design by fintech.co.org',
                      style: TextStyle(
                          fontFamily: 'Satisfy',
                          color: Colors.white,
                          fontSize: 15),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}