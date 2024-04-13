import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:white_snow_garden/responsive/responsiveness.dart';
import 'package:white_snow_garden/widget/appBarContainer.dart';
import 'package:white_snow_garden/widget/bottom_widget.dart';
import 'package:white_snow_garden/widget/carousel_contact_widget.dart';
import 'package:white_snow_garden/widget/drawer.dart';






class TheContactPage extends StatelessWidget {
  const TheContactPage({super.key});

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
              child: ListView(
                children:  [
                  if (!Responsive.isMobile(context)) const AppbarContainer(),

                  const CarouselContainer(),
                  ContactFormPage(),
                  const BottomWidget()
                ],
              ),
            );},

      ),
    ));
  }
}

class ContactFormPage extends StatelessWidget {
  ContactFormPage ({
    super.key,
  });

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return




        Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             color:const  Color(0xffD0DCDA),
            //height: 900,
            child: Column(
              children: [
                 Padding(
                  padding: const EdgeInsets.all(8),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('We are thrilled to hear from you! Whether you have a question about our services, need assistance, or just want to give us feedback, we wouldd love to connect. Feel free to reach out to us using any of the methods below:',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              //color: Color(0xff6BAE6D),
                            color: Colors.black,
                              letterSpacing: .5,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),)),
                ),
                 Padding(
                  padding: EdgeInsets.all(8),
                  child: Align(
                    alignment: Alignment.topLeft,
                      child: Text('Complete our online contact form, and we will get back to you as soon as possible. Simply provide your name, email address, and a brief message outlining your inquiry.',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            //color: Color(0xff6BAE6D),
                              //color: Colors.black,
                              letterSpacing: .5,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )),

                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        text: 'Via Email, For general inquiries or support, drop us an email at',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            //color: Color(0xff6BAE6D),
                              color: Colors.black,
                              letterSpacing: .5,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '  contact@snowwhite.com.',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                //color: Color(0xff6BAE6D),
                                  color: Colors.blue,
                                  letterSpacing: .5,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextSpan(
                            text: '   We aim to respond within 24 hours.',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                //color: Color(0xff6BAE6D),
                                  //
                                // color: Colors.black,
                                  letterSpacing: .5,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(

                    height: 450,
                    width: 400,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xfff5d5fd),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 5),
                              blurRadius: 10,
                              spreadRadius: 1,
                              color: Colors.grey[300]!)
                        ]),
                    child: Form(
                      key: formKey,
                      child:isDesktop? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Contact Us',
                              style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Poppins ExtraBold')),
                          TextFormField(
                            controller: nameController,
                            decoration: const InputDecoration(hintText: 'Name'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '*Required';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(hintText: 'Email'),
                            validator: (email) {
                              if (email == null || email.isEmpty) {
                                return 'Required*';
                              } else if (!EmailValidator.validate(email)) {
                                return 'Please enter a valid Email';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: messageController,
                            decoration:  InputDecoration(hintText: 'Message',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF000000),
                                    strokeAlign: BorderSide.strokeAlignInside,
                                  ),
                                ),
                                fillColor: Colors.purple.withOpacity(0.2),
                                filled: false,
                                prefixIcon: const Icon(
                                  Icons.mail,
                                  color: Colors.purple,
                                )),
                            maxLines: 5,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '*Required';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 45,
                            width: 110,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white, backgroundColor: const Color(0xff151534),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40))),
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  final response = await sendEmail(
                                      nameController.value.text,
                                      emailController.value.text,
                                      messageController.value.text);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    response == 200
                                        ? const SnackBar(
                                        content: Text('Message Sent!'),
                                        backgroundColor: Colors.green)
                                        : const SnackBar(
                                        content: Text('Failed to send message!'),
                                        backgroundColor: Colors.red),
                                  );
                                  nameController.clear();
                                  emailController.clear();
                                  messageController.clear();
                                }
                              },
                              child: const Text('Send', style: TextStyle(fontSize: 16)),
                            ),
                          ),
                        ],
                      ):Text('data'),
                    ),
                  ),
                ),
              ],
            ),
                 ),
         );


  }
}

Future sendEmail(String name, String email, String message) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  String serviceId='service_2dgwerw';
  String templateId='template_e933kxh';
  String userId='FEnFUHG86eVpdHMzF';
  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'from_name': name,
          'from_email': email,
          'message': message
        }
      }));
  return response.statusCode;
}