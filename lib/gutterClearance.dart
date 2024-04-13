
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:white_snow_garden/responsive/responsiveness.dart';
import 'package:white_snow_garden/widget/appBarContainer.dart';
import 'package:white_snow_garden/widget/bottom_widget.dart';
import 'package:white_snow_garden/widget/carousel_contact_widget.dart';

import 'package:white_snow_garden/widget/drawer.dart';
import 'package:white_snow_garden/widget/gutter_services.dart';





class GutterClearancePage extends StatelessWidget {
  const GutterClearancePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return  SafeArea(child: Scaffold(
      appBar: !isDesktop
          ? AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
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
          ?  SizedBox(
        width: 250,

        child: isDesktop ? const AppbarContainer(color: Colors.red,) : const DrawerWidget(),)
          : null,
      body: LayoutBuilder(

        builder: (context, constraints) {
  return
  Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    color: Colors.white,
    child: ListView(
    children:  [
    if (!Responsive.isMobile(context)) const AppbarContainer(),

    const CarouselContainer(),
    const GutterServices(),
    const BottomWidget()
    ],
    ),
    );},

      ),
    ));
  }
}

