import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:white_snow_garden/carousel.dart';
import 'package:white_snow_garden/responsive/responsiveness.dart';

class CarouselContainer extends StatelessWidget {
  const CarouselContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0XFFE7E7E6),
      child: Row(
        children: [
          Container(
            color: const Color(0XFFE7E7E6),
            height: 90,
            //width: 600,
            width:isDesktop?600:200,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: ReviewCarousel(),
            ),
          ),
          Padding(
            //to join the two contact on carousel
            padding: const EdgeInsets.only(bottom: 40),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0XFFE7E7E6),
                      // borderRadius: BorderRadius.only(
                      //   bottomLeft: Radius.circular(10),
                      //   bottomRight: Radius.circular(10),
                      // ),
                    ),
                    height: 60,
                    width: 280,
                    child: const Row(
                      children: [
                        Text(
                          'Get in Touch',
                          style: TextStyle(
                            //fontFamily: 'ConcertOne',
                            color: Colors.black,

                            fontSize: 20.0,
                          ),
                        ),
                        VerticalDivider(
                          indent: 22,
                          endIndent: 22,
                          thickness: 3,
                          color: Colors.black,
                        ),
                        Text(
                          'All Day Support',
                          style: TextStyle(
                            //fontFamily: 'ConcertOne',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      color: Colors.lightGreenAccent,
                      child: const Icon(
                        Icons.phone,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      color: Colors.black,
                      child: const Padding(
                        padding:
                        EdgeInsets.only(left: 25, bottom: 1),
                        child: Text(
                          '07407208778',
                          style: TextStyle(
                            //fontFamily: 'Satisfy',
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}