import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_snow_garden/responsive/responsiveness.dart';

class GutterServices extends StatelessWidget {
  const GutterServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return SelectionArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: 1200,
          color: const Color(0xffD0DCDA),
          child: Column(

            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Gutter Clearance',
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
                      'OUR SOLUTIONS FOR QUALITY GUTTER ClEANING',
                      style: GoogleFonts.lateef(
                        textStyle: const TextStyle(
                            color: Color(0xff6BAE6D),
                            letterSpacing: .5,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'regular gutter maintenance is essential for protecting your home from water damage which can  lead to roof damage and mould formation on the walls,'
                          ' preserving its structural integrity, and maintaining a safe and healthy living environment. By investing in routine gutter cleaning and inspection, '
                          'you can avoid costly repairs and ensure the long-term health and longevity of your home.',
                      style: GoogleFonts.aladin(
                        textStyle: const TextStyle(
                          //color: Color(0xff6BAE6D),
                            letterSpacing: .5,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'We offer additional services such as gutter repair, gutter guard installation to prevent debris buildup, and gutter replacement if necessary. Hiring a professional gutter clearance service can help ensure that your gutter system remains in good condition and effectively protects your property from water damage.',

                      style: GoogleFonts.aladin(
                        textStyle: const TextStyle(
                          //color: Color(0xff6BAE6D),
                            letterSpacing: .5,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('We Offer the following Gutter Services:'),
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
                                '✅ Gutter Cleaning: We will remove all debris, leaves, and blockages to ensure proper water flow..',
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
                                '✅ Gutter Repair: From leaks to loose gutters, we will restore your gutter system to optimal conditio',
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
                                '✅ Gutter Installation: Need a new gutter system? We have got you covered with expert installation services.',
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
                                '✅ Gutter Maintenance: Regular maintenance keeps your gutters functioning smoothly and prevents future issues.',
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
                  ), ListTile(
                    title: const Text('Why Choose Us:'),
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
                                '🌟 Expertise: Our team has the experience and know-how to handle all your gutter needs.',
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
                                '🌟 Reliability: Count on us for timely service and quality workmanship.',
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
                                '🌟 Affordability: We offer competitive pricing without sacrificing quality.',
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
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10),
                child: Row(
                  children: [
                    Image(

                      image:  const AssetImage('assets/images/gutter.jpg' ),
                      height:isDesktop? 350:160,
                      width: isDesktop? 1100:350,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10,),

                  ],
                ),
              ),

              Text('choosing our landscaping and gardening services means partnering with a trusted team of professionals dedicated to delivering outstanding results and exceptional customer experiences.',
                style: GoogleFonts.roboto(
                    textStyle:const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,

                    )
                ),),
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
            ],
          ),
        ),
      ),
    );
  }
}