import 'package:flutter/material.dart';

import 'facebook_ui1.dart';
import 'instagram_ui.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[900],
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                        size: 35,
                      ),
                      Container(
                        height: 30,
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200],
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            contentPadding:EdgeInsets.only(left: 7, bottom: 2),
                            hintText: 'Search',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/icons/messenger.png',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  Row(
                    children: [
                      const Text(
                        'Stories',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextButton.icon(
                          onPressed: () {},
                          label: const Text(
                            'See Archive',
                            style: TextStyle(color: Colors.black),
                          ),
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            textDirection: TextDirection.ltr,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 170,
                    width: double.infinity,
                    // color: Colors.grey,

                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        story(
                            backgroundPicture: 'assets/images/me.jpg',
                            user: 'YOUSIF GHALI',
                            userProfilePicture: 'assets/icons/plus.png'),
                        story(
                            backgroundPicture: 'assets/images/waleedS.jpg',
                            user: 'Waleed Kh',
                            userProfilePicture: 'assets/images/waleedP.jpg'),
                        story(
                            backgroundPicture: 'assets/images/hamadaS.jpg',
                            user: 'Hamada Qandeel',
                            userProfilePicture: 'assets/images/HamadaP.jpg'),
                        story(
                            backgroundPicture: 'assets/images/Yasser.jpg',
                            user: 'Yasser Abughali',
                            userProfilePicture: 'assets/images/Yasser.jpg'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(
                          'assets/images/me.jpg',
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Yousif Ghali',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Updated his cover photo'),
                      Spacer(),
                      Icon(Icons.more_horiz_outlined),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 45.0),
                    child: Text(
                      '1 min ago',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/me1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/thumbs-down.png'),
                      Image.asset('assets/icons/thumbs-up.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        '400',
                        style: TextStyle(color: Colors.black),
                      ),
                      const Spacer(),
                      const Text(
                        '122 comments',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Like',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_rounded,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Comment',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  // BottomNavigationBar(
                  //   type: BottomNavigationBarType.fixed,
                  //
                  //     items: <BottomNavigationBarItem>[
                  //   BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
                  //   BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
                  // ],
                  // ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget story(
    {required String user,
    required String backgroundPicture,
    required String userProfilePicture}) {
  return Container(
    width: 120,
    height: 170,
    margin: const EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(13),
      image: DecorationImage(
        image: AssetImage(backgroundPicture),
        fit: BoxFit.cover,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 4, top: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(userProfilePicture),
          ),
          Text(
            user,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    ),
  );
}
