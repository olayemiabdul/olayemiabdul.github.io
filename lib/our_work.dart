
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:white_snow_garden/carousel.dart';
import 'package:white_snow_garden/responsive/responsiveness.dart';
import 'package:white_snow_garden/widget/appBarContainer.dart';
import 'package:white_snow_garden/widget/bottom_widget.dart';
import 'package:white_snow_garden/widget/carousel_contact_widget.dart';
import 'package:white_snow_garden/widget/drawer.dart';


class OurWorkPage extends StatefulWidget {
  const OurWorkPage({super.key});

  @override
  State<OurWorkPage> createState() => _OurWorkPageState();
}

class _OurWorkPageState extends State<OurWorkPage> {

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      appBar: !isDesktop
          ? AppBar(
        backgroundColor: Colors.black,
        title:  Padding(
          padding: const EdgeInsets.only(left: 100),
          child: InkWell(
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
        ),
      )
          : null,
      endDrawer: !isDesktop
          ? SizedBox(
        width: 250,

        child: isDesktop ? const AppbarContainer(color: Colors.red,) : const DrawerWidget(),)
          : null,
      body:

          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                if (!Responsive.isMobile(context)) const AppbarContainer(),

                const CarouselContainer(),
                const LandScapeDesign(),
                const BottomWidget()
              ],
            ),
          ),


    );
  }
}





class LandScapeDesign extends StatelessWidget {
  const LandScapeDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return

       Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: isDesktop?1350:1800,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xffD0DCDA),
          child: Column(
            children: [
              SelectionArea(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'LANDSCAPE DESIGN',
                          //style: GoogleFonts.libreBaskerville(),
                          style: TextStyle(
                            fontFamily: 'Roboto Bold',
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'CHOOSE FROM OUR VARIOUS LANDSCAPE DESIGN PACKAGES',
                        style: GoogleFonts.lateef(
                          textStyle: const TextStyle(
                              color: Color(0xff6BAE6D),
                              letterSpacing: .5,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Text(
                      'At Snow white we  create inclusive and welcoming outdoor spaces that enrich the lives of all individuals in the community',
                      style: GoogleFonts.aladin(
                        textStyle: const TextStyle(
                            //color: Color(0xff6BAE6D),
                            letterSpacing: .5,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    ListTile(
                      title: Text('1. Basic Design Package:'),
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
                                  '. Affordable pricing.',
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
                                  '. Includes essential elements such as a basic layout plan, plant selection, and hardscape recommendations',
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
                                  '. Accessible online or in-store with easy-to-understand instructions.',
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
                                  '. Designed for easy implementation by homeowners or DIY enthusiasts.',
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
                      title: const Text('2. Online Design Package:'),
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
                                  '. Cost-effective option.',
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
                                  '. Accessible through an online platform',
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
                                  '. Offers a range of design templates and customization options to suit different preferences..',
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
                                  '.Provides detailed instructions and support for implementation, including plant care guides and installation tips .',
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
                      title: const Text('3. Ready-Made Garden Design Package:'),
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
                                  '. Affordable pricing, with pre-designed garden layouts available..',
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
                                  '. Offers aesthetically pleasing designs created by professional landscapers.',
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
                                  '. Designed for hassle-free implementation, with comprehensive instructions and support provided...',
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
                                  '.Virtual Consultation Package .',
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
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 10, left: 10),
                 child:isDesktop? Row(
                  children: [
                    Image(

                      image: const AssetImage('assets/images/a.jpg' ),
                      height:isDesktop? 350:150,
                      width: isDesktop? 390:190,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10,),
                    Image(
                      image: const AssetImage('assets/images/b.jpg'),
                      height:isDesktop? 350:150,
                      width: isDesktop? 390:190,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10,),
                     Image(
                      image: const AssetImage('assets/images/c.jpg'),
                      height:isDesktop? 350:150,
                      width: 390,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10,),



                  ],
                ):Column(
                  children: [
                    const Row(children: [
                      Image(

                        image: AssetImage('assets/images/a.jpg' ),
                        height:150,
                        width: 225,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10,),
                      Image(
                        image: AssetImage('assets/images/b.jpg'),
                        height:150,
                        width: 225,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10,),



                    ],),

                     Image(
                      image: const AssetImage('assets/images/c.jpg'),
                      height: 350,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
               ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10),
                child:Row(

                  children: [
                    Image(

                      image: const AssetImage('assets/images/e.jpg' ),
                      height: 150,
                      width:  isDesktop? 390:145,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10,),
                    Image(
                      image: const AssetImage('assets/images/f.jpg'),
                      height: 150,
                      width:  isDesktop? 390:145,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10,),
                    Image(
                      image: const AssetImage('assets/images/g.jpg'),
                      height: 150,
                      width:  isDesktop? 390:145,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10,),

                  ],
                ),
              ),
              SelectionArea(
                child: Text('choosing our landscaping and gardening services means partnering with a trusted team of professionals dedicated to delivering outstanding results and exceptional customer experiences.',
                style: GoogleFonts.roboto(
                  textStyle:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,

                  )
                ),),
              ),
              const SizedBox(height: 20,),
              InkWell(
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
              // GridView.count(
              //   primary: false,
              //   shrinkWrap: true,
              //   padding: const EdgeInsets.all(20),
              //   crossAxisSpacing: 10,
              //   childAspectRatio: 1,
              //   mainAxisSpacing: 10,
              //   crossAxisCount: 2,
              //   children: <Widget>[
              //     Container(
              //
              //       height:isDesktop? 350:50,
              //       width: isDesktop?290:390,
              //       padding: const EdgeInsets.all(8),
              //       color: Colors.teal[100],
              //       child:    const Image(
              //
              //         image: AssetImage('assets/images/a.jpg' ),
              //
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //
              //
              //     Container(
              //       height: 50,
              //       width: 100,
              //       padding: const EdgeInsets.all(8),
              //       color: Colors.teal[400],
              //       child:Image(
              //
              //         image: const AssetImage('assets/images/c.jpg' ),
              //         height:isDesktop? 350:100,
              //         width: isDesktop?290:190,
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //     Container(
              //       height: 50,
              //       width: 400,
              //       padding: const EdgeInsets.all(8),
              //       color: Colors.teal[500],
              //       child: Image(
              //
              //         image: const AssetImage('assets/images/d.jpg' ),
              //         height:isDesktop? 350:100,
              //         width: isDesktop?290:190,
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //
              //   ],
              // )
            ],
          ),
        ),
      );

  }
}




