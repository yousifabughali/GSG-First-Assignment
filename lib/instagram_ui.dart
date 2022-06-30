import 'package:flutter/material.dart';

class InstagramUi extends StatelessWidget {
  const InstagramUi({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Instagram',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 2,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.message_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 6,vertical: 10),
              child: Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/me1.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'joeabughali',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.verified,
                    color: Colors.blue,
                    size: 20,
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),

            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                'assets/images/me1.jpg',
                width: double.infinity,
                height: 300,
                fit: BoxFit.fill,
              ),
            ),
           const  SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/icons/love.png',
                  height: 30,
                  width: 40,
                ),
                Image.asset(
                  'assets/icons/chat.png',
                  height: 30,
                  width: 40,
                ),
                Image.asset(
                  'assets/icons/send.png',
                  height: 30,
                  width: 40,
                ),
               const  Spacer(),
                Image.asset(
                  'assets/icons/save-instagram.png',
                  height: 25,
                  width: 40,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                'Liked by OsShanti and 20 Others',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              unselectedLabelStyle: TextStyle(color: Colors.green),
              selectedLabelStyle: TextStyle(color: Colors.brown),

              items: const [
              BottomNavigationBarItem(
                label: 'Home',
                backgroundColor: Colors.white,
                icon: Icon(
                    Icons.home_filled,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Search',

                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: 'New',
                icon: Icon(
                  Icons.slow_motion_video,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Notifications',
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ),BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(
                  Icons.account_circle_sharp,
                  color: Colors.black,
                ),
              ),
            ],
            ),
          ],
        ),
      ),
    );
  }


}
