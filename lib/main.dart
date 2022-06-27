import 'package:first_flutter_lecture/facebook_ui1.dart';
import 'package:flutter/material.dart';

import 'facebook_ui.dart';

void main() {
  runApp(const FacebookUi1());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          elevation: 5,
          title: const Text(
            'First Lecture',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          // leading: const Icon(Icons.arrow_back_ios),
        ),
        body:
            //------------  # center the image with 300*300
            // Center(
            //   child: SizedBox(
            //     height: 300,
            //     width: 300,
            //     child: Image.asset('assets/images/first.jpg',fit: BoxFit.contain),
            //   ),
            // ),
            //-------------- # coulumn with image and
            Center(
              child: Column(
                children: [
                  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
                  Column(
                  children: [
                    SizedBox(
                      height: 300,
                      width: 190,
                      child: Image.asset('assets/images/first.jpg'),
                    ),
                    const Text(
                      'Mountine image',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blueGrey,
                      ),
                    ),

                  ],
            ),
            Column(
                  children: [
                    SizedBox(
                      height: 300,
                      width: 190,
                      child:  Image.asset('assets/images/first.jpg'),
                    ),
                    const Text(
                      'Mountine image 2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blueGrey,
                      ),
                    ),

                  ],
            ),

                  //
                  // Image.network(
                  //     'https://th.bing.com/th/id/R.b3b3a65076cf58c418ab419cc0340224?rik=8pakn0z2pmBHUQ&pid=ImgRaw&r=0',
                  //
                  // ),
          ],
        ),
                  const Text(
                    'YOUSEF ABUGHALI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
