import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:white_snow_garden/our_work.dart';
import 'package:white_snow_garden/carousel.dart';
import 'package:white_snow_garden/gutterClearance.dart';
import 'package:white_snow_garden/responsive/responsiveness.dart';
import 'package:white_snow_garden/widget/appBarContainer.dart';
import 'package:white_snow_garden/widget/bottom_widget.dart';
import 'package:white_snow_garden/widget/carousel_contact_widget.dart';
import 'package:white_snow_garden/widget/drawer.dart';
import 'package:white_snow_garden/widget/home_widget.dart';
import 'package:white_snow_garden/widget/hover_row_widget.dart';
import 'package:white_snow_garden/widget/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: SizedBox(
        height: 1400,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            if (!Responsive.isMobile(context)) const AppbarContainer (),

            const CarouselPage(),

            //professional lawn service container
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                //color: Colors.grey.withOpacity(0.1),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff844ff6),
                    Color(0xff8369de),
                    Color(0xff8da0cb),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Professional landScaping Business',
                        style: TextStyle(
                            fontFamily: 'ConcertOne',
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Wrap(
                    alignment: WrapAlignment.end,
                    spacing: 5,
                    runSpacing: 10,
                    children: [
                      RichText(
                        text: TextSpan(
                          text:
                              ' At WhiteSnow Garden Care, we transform outdoor spaces into captivating landscapes that blend beauty, functionality, and sustainability. As your trusted partner in professional landscaping, we take pride in creating environments that not only meet your unique vision but also harmonize seamlessly with the natural elements.',
                          style: const TextStyle(
                              //fontFamily: 'ConcertOne',
                              //color: Colors.white,
                              fontSize: 13),
                          children: <TextSpan>[
                            const TextSpan(
                              text: '\n',
                              style: TextStyle(
                                  fontFamily: 'ConcertOne',
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            const TextSpan(
                              text:
                                  'Let us turn your landscape dreams into a breathtaking reality',
                              style: TextStyle(
                                  //fontFamily: 'ConcertOne',
                                  //color: Colors.white,
                                  fontSize: 13),
                            ),
                            TextSpan(
                              text: ' Contact us',
                              style: const TextStyle(
                                  fontFamily: 'ConcertOne',
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                            const TextSpan(
                              text:
                                  ' today to schedule a consultation and discover the possibilities of professional landscaping tailored to your unique style and preferences.',
                              style: TextStyle(
                                  //fontFamily: 'ConcertOne',
                                  //color: Colors.white,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //review carousel
            const CarouselContainer(),

            const HoverRowWidget(),
            const BottomWidget()
          ],
        ),
      ),
    );
  }
}


