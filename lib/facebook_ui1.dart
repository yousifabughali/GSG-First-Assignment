import 'package:flutter/material.dart';

class FacebookUi1 extends StatelessWidget {
  const FacebookUi1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              'feed',
              style: TextStyle(color: Colors.black),
            ),
            leading: const Icon(Icons.arrow_back_ios,color: Colors.black,),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Added 13 photos to the album ',),
                      Icon(Icons.more_horiz_outlined),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 45),
                    child: Text('Creative photography',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.only(left: 45.0),
                    child: Text(
                      '1 min ago',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry.'''),
                  ),
                  SizedBox(
                    height: 422,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
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
                          height: 20,
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
                          height: 20,
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
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
