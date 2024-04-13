
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:white_snow_garden/gutterClearance.dart';
import 'package:white_snow_garden/hover.dart';
import 'package:white_snow_garden/responsive/responsiveness.dart';

class HoverRowWidget extends StatelessWidget {
  const HoverRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Container(
      height: isDesktop?1060:1380,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 1),
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: isDesktop
                      ? Column(
                          children: [
                            // our services
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                              ),
                              height: 200,
                              width: 280,
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      const Center(
                                        child: Text(
                                          'Our Service',
                                          style: TextStyle(
                                              fontFamily: 'Satisfy',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                              fontSize: 20),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.white,
                                        thickness: 3,
                                        height: 1,
                                        indent: 40,
                                        endIndent: 40,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 15, left: 10),
                                        child: InkResponse(
                                          hoverColor: Colors.green,
                                          onTap: () {},
                                          child: MyHoverBuilder(
                                            builder: (isHover) {
                                              final color = isHover
                                                  ? Colors.green
                                                  : Colors.white60;
                                              return RichText(
                                                text: TextSpan(
                                                  text: 'LandScape Design',
                                                  style: TextStyle(
                                                    //fontFamily: 'ConcertOne',
                                                    color: color,
                                                    fontSize: 20,
                                                  ),
                                                  children: [],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 15, left: 10),
                                        child: InkResponse(
                                          hoverColor: Colors.green,
                                          onTap: () {},
                                          child: MyHoverBuilder(
                                            builder: (isHover) {
                                              final color = isHover
                                                  ? Colors.green
                                                  : Colors.white60;
                                              return RichText(
                                                text: TextSpan(
                                                  text: 'Lawn care',
                                                  style: TextStyle(
                                                    //fontFamily: 'ConcertOne',
                                                    color: color,
                                                    fontSize: 20,
                                                  ),
                                                  children: <TextSpan>[],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 15, left: 10),
                                        child: InkResponse(
                                          hoverColor: Colors.green,
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const GutterClearancePage(),
                                              ),
                                            );
                                          },
                                          child: MyHoverBuilder(
                                            builder: (isHover) {
                                              final color = isHover
                                                  ? Colors.green
                                                  : Colors.white60;
                                              return RichText(
                                                text: TextSpan(
                                                  text: 'Gutter Clearance',
                                                  style: TextStyle(
                                                    //fontFamily: 'ConcertOne',
                                                    color: color,
                                                    fontSize: 20,
                                                  ),
                                                  children: const <TextSpan>[],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 15, left: 10),
                                        child: InkResponse(
                                          hoverColor: Colors.green,
                                          onTap: () {},
                                          child: MyHoverBuilder(
                                            builder: (isHover) {
                                              final color = isHover
                                                  ? Colors.green
                                                  : Colors.white60;
                                              return RichText(
                                                text: TextSpan(
                                                  text: 'Seasonal Clean Up',
                                                  style: TextStyle(
                                                    //fontFamily: 'ConcertOne',
                                                    color: color,
                                                    fontSize: 20,
                                                  ),
                                                  children: <TextSpan>[],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 15, left: 10),
                                        child: InkResponse(
                                          hoverColor: Colors.green,
                                          onTap: () {},
                                          child: MyHoverBuilder(
                                            builder: (isHover) {
                                              final color = isHover
                                                  ? Colors.green
                                                  : Colors.white60;
                                              return RichText(
                                                text: TextSpan(
                                                  text:
                                                      'Pest and Disease Control',
                                                  style: TextStyle(
                                                    //fontFamily: 'ConcertOne',
                                                    color: color,
                                                    fontSize: 20,
                                                  ),
                                                  children: <TextSpan>[],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //support
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              height: 150,
                              width: 280,
                              child: const Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 5),
                                          child: Text(
                                            'Get in Touch',
                                            style: TextStyle(
                                              fontFamily: 'Satisfy',
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          indent: 40,
                                          endIndent: 40,
                                          thickness: 5,
                                          color: Colors.white,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 5),
                                          child: Text(
                                            'All Day Support',
                                            style: TextStyle(
                                              fontFamily: 'Satisfy',
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          size: 30,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '07407208778',
                                          style: TextStyle(
                                            fontFamily: 'Satisfy',
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      : Container(
                          color: Colors.green,
                        ),
                ),
              ),
            Expanded(
              //flex: isDesktop?0:8,
              child: SelectionArea(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: 10, right: isDesktop ? 0 : 150),
                      child: RichText(
                        text: TextSpan(
                          text: 'Welcome To WHITESNOW',
                          style: TextStyle(
                              fontFamily: 'ConcertOne',
                              color: Colors.green,
                              fontSize: isDesktop ? 30 : 20),
                          children: <TextSpan>[
                            // TextSpan(
                            //   text: ' WHITESNOW',
                            //   style: TextStyle(
                            //       fontFamily: 'ConcertOne',
                            //       color: Colors.green,
                            //       fontSize: isDesktop?30:20),
                            // ),
                            // TextSpan(
                            //   text: ' \n      ',
                            //   style: TextStyle(
                            //       fontFamily: 'Satisfy',
                            //       color: Colors.black,
                            //       fontSize: 20),
                            // ),
                            TextSpan(
                              text: ' GARDEN CARE',
                              style: TextStyle(
                                  fontFamily: 'ConcertOne',
                                  color: Colors.green,
                                  fontSize: isDesktop ? 30 : 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //const SizedBox(height: 2),

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Absolutely! Sit back, relax, and enjoy a beautifully maintained lawn and garden while our experienced gardening specialists handle all your lawn care needs. With our expertise and attention to detail, you can trust that your outdoor space will be in top-notch condition, allowing you to unwind and appreciate the beauty of your surroundings without the hassle of maintenance. '
                        'Whether it\'s mowing, weeding, pruning, or landscaping, our team is dedicated to providing exceptional service and ensuring your complete satisfaction. So go ahead, take a break, and let us take care of the rest!',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                        softWrap: true,
                      ),
                    ),
                    const BuildDetails(
                      description: 'Absolutely! Sit back, relax, and enjoy beautifully maintained lawn and garden\n'
                          'while our experienced gardening specialists\n'
                          'handle all your lawn care needs. With our\n'
                          'expertise and attention to detail, you can\n'
                          'trust that your outdoor space will be in\n'
                          'top-notch condition,allowing you to unwind\n'
                          'and appreciate the beauty of your\n'
                          'surroundings without the hassle of\n'
                          'maintenance. '
                          'Whether it\'s mowing, weeding, pruning, or landscaping, our team is \n '
                          'dedicated to providing exceptional service and ensuring your complete satisfaction.\n '
                          'So go ahead, take a break, and let us take care of the rest!\n '
                          'Here is a list of the excellent garden services we offer:\n ',
                      images: Image(
                        image: AssetImage(
                          'assets/images/5.jpg',
                        ),
                      ),
                    ),



                    Padding(
                      padding:  EdgeInsets.only(left: isDesktop?390:190),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.only(left: 3, top: 3),
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(

                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: const Color(0xffD0DCDA),
                            border: Border.all(
                              color: Colors.green,
                              width: 3.5,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: RichText(
                                  text: const TextSpan(
                                    text: 'Get',
                                    style: TextStyle(
                                        fontFamily: 'ConcertOne',
                                        color: Colors.white,
                                        fontSize: 30),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' Free Quote',
                                        style: TextStyle(
                                            fontFamily: 'ConcertOne',
                                            color: Colors.white,
                                            fontSize: 30),
                                      ),
                                      TextSpan(
                                        text: ' Now',
                                        style: TextStyle(
                                            fontFamily: 'ConcertOne',
                                            color: Colors.white,
                                            fontSize: 30),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildDetails extends StatelessWidget {
  const BuildDetails(
      {super.key, required this.description, required this.images});
  final String description;
  final Image images;

  @override
  Widget build(BuildContext context) {
    final isDesktop=Responsive.isDesktop(context);
    return Stack(
      children: [
        Container(
            height: isDesktop?900:1200,
            width: 920,
            color: Colors.yellow,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: isDesktop?470:340),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                    ),
                    // softWrap: false,
                    // maxLines: 4,
                  ),
                ),
                ListTile(
                  title: const Text('1. Lawn Maintenance:'),

                  subtitle: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '. Mowing.',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '. Edging',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '. Trimming..',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '.Fertilization .',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                ListTile(

                  title: const Text('2. Landscape Design and Installation:'),
                  subtitle: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '. Custom landscape design.',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '. Plant selection and installation',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '. Hardscaping (e.g., pathways, patios)..',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '.Irrigation system installation .',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('3. Specialized Services:'),
                  subtitle: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '. Vegetable garden installation and maintenance.',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '. Flower garden design and care',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '. Herb garden maintenance..',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '.Water feature installation and maintenance .',
                              style: GoogleFonts.aladin(
                                textStyle: const TextStyle(
                                    //color: Color(0xff6BAE6D),
                                    letterSpacing: .5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Positioned(
          top: 10,
          right: 20,
          child: Container(
            height: 150,
            width: isDesktop?450:320,
            color: Colors.redAccent,
            child: Image(
              image: images.image,
              width: 50,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
