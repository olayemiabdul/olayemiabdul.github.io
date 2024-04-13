import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  PageController controller = PageController();
  int firstPage = 0;
  //int currentIndex = 0;
  List<String> images = [
    ('assets/images/1.jpg'),
    ('assets/images/2.jpg'),
    ('assets/images/3.jpg'),
    ('assets/images/4.jpg'),
    'assets/images/5.jpg',
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (firstPage < 5) {
        firstPage++;
      } else {
        firstPage = 0;
      }
      controller.animateToPage(
        firstPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.bounceInOut,
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  List<Widget> indicators(imagesLength, currentIndex, ) {
    return List.generate(
      imagesLength,
      (index) => Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      ),
    );
  }

  AnimatedContainer myContainer(images, pagePosition, active) {
    double margin = active ? 10 : 20;
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.bounceIn,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(images[pagePosition]), fit: BoxFit.cover),
        color: Colors.white,
      ),
      height: 1200,
      width: MediaQuery.of(context).size.width,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 400,
          child: PageView.builder(
              itemCount: images.length,
              pageSnapping: true,
              controller: controller,
              onPageChanged: (page) {
                setState(() {
                  firstPage = page;
                });
              },
              itemBuilder: (context, position) {
                //bool active = position == firstPage;
                // return myContainer(images,position,active);
                return carouselContainer(context, position);
              }),
        ),
        const SizedBox(
          height: 3,
        ),
        Container(
          color: Colors.white,
          width: 100,
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(images.length, firstPage,),
          ),
        ),
      ],
    );
  }

  Container carouselContainer(BuildContext context, int position) {
    return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 700,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        opacity: 0.5,

                    image: AssetImage(

                      images[position],
                    ),
                    fit: BoxFit.fill,
                  )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 40),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: const TextSpan(
                              text: 'Welcome To',
                              style: TextStyle(
                                  fontFamily: 'Satisfy',
                                  color: Colors.green,
                                  fontSize: 20),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' WhiteSnow',
                                  style: TextStyle(
                                      fontFamily: 'Satisfy',
                                      color: Colors.green,
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text: ' \n      ',
                                  style: TextStyle(
                                      fontFamily: 'Satisfy',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text: ' Garden Care',
                                  style: TextStyle(
                                      fontFamily: 'Satisfy',
                                      color: Colors.greenAccent,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // const SizedBox(height: 1,),
                      Padding(
                        padding: const EdgeInsets.only(top: 1, left: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: const TextSpan(
                              text: ' Professional',
                              style: TextStyle(
                                  fontFamily: 'ConcertOne',
                                  color: Colors.black,
                                  fontSize: 50),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\n',
                                  style: TextStyle(
                                      fontFamily: 'ConcertOne',
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text: ' Gardeners',
                                  style: TextStyle(
                                      fontFamily: 'ConcertOne',
                                      color: Colors.black,
                                      fontSize: 50),
                                ),
                                TextSpan(
                                  text: '&',
                                  style: TextStyle(
                                      fontFamily: 'ConcertOne',
                                      color: Colors.black,
                                      fontSize: 50),
                                ),
                                TextSpan(
                                  text: '\n',
                                  style: TextStyle(
                                      fontFamily: 'ConcertOne',
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text: ' Landscapers',
                                  style: TextStyle(
                                      fontFamily: 'ConcertOne',
                                      color: Colors.black,
                                      fontSize: 50),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 40),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  "Planting dreams, cultivating growth. Your garden's story begins with us.",
                              style: TextStyle(
                                decorationThickness: 2,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\n',
                                  style: TextStyle(
                                      fontFamily: 'ConcertOne',
                                      color: Colors.black,
                                      fontSize: 2),
                                ),
                                TextSpan(
                                  text:
                                      "In the garden of business success, every seed we plant is a client's dream blossoming.",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                                TextSpan(
                                  text: '\n',
                                  style: TextStyle(
                                      fontFamily: 'ConcertOne',
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text:
                                      "Rooted in passion, flourishing in excellence. Your garden, our expertise.",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 3,
                                ),
                                height: 40,
                                width: 140,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                  color: Colors.green,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, top: 5),
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'Who',
                                      style: TextStyle(
                                          fontFamily: 'ConcertOne',
                                          color: Colors.white,
                                          fontSize: 20),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: ' We Are',
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
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.only(left: 3, top: 3),
                              height: 40,
                              width: 140,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                                color: Colors.deepOrange,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 5,
                                ),
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
                      )

                    ],
                  ));
  }
}

class ReviewCarousel extends StatefulWidget {
  const ReviewCarousel({super.key});

  @override
  State<ReviewCarousel> createState() => _ReviewCarouselState();
}

class _ReviewCarouselState extends State<ReviewCarousel> {

  List<String> reviews = [
    ('Absolutely thrilled with the landscaping work done by this company!; \n' 'They transformed our backyard into a beautiful oasis..... Highly recommend! \n' 'Imran Khalid' ),
    ('They were prompt, courteous, and really listened to what we wanted for our garden redesign.\n' 'The results are stunning,\n' 'Claire Graham'),
    ('Highly professional and reliable gardening service! \n' 'and leave everything tidy..\n' 'Olayinka Solanke'),
    ('Wow! What an incredible transformation!\n' 'Sanjida Begum'),

  ];
  List<String> names=[
    'Bello'
        'Claire'
        'Nadrah'
        'Imran Afzal'

  ];
  int firstReviews=0;
  PageController reviewController = PageController();
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (firstReviews < 5) {
        firstReviews++;
      } else {
        firstReviews= 0;
      }
      reviewController.animateToPage(
        firstReviews,
        duration: const Duration(milliseconds: 350),
        curve: Curves.bounceInOut,
      );
    });
  }
  @override
  void dispose() {
    reviewController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: PageView.builder(
          itemCount: reviews.length,
          pageSnapping: true,
          controller: reviewController,
          onPageChanged: (page) {
            setState(() {
              firstReviews = page;
            });
          },
          itemBuilder: (context, position) {
            //bool active = position == firstPage;
            // return myContainer(images,position,active);
            return reviewsContainer(context, position);
          }),
    );
  }
  Container reviewsContainer(BuildContext context, int position) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 700,
        
        child: Text(reviews[position],softWrap: true,maxLines: 3,textAlign:TextAlign.start , style: const TextStyle(fontSize: 12, color: Colors.black),

        ));
  }
}
