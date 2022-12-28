import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../app_colors.dart';

class ProfilePage extends StatelessWidget {
  static const List tags = [
    'traval',
    'urban',
    'fashion',
    'lifestyle',
    'editing'
  ];

  static const List categories = [
    'Featured',
    'Neon City',
    'Street Art',
    'Fashion',
    'Studio',
    'Design'
  ];

  static const List images = [
    'images/arts/art1.jpeg',
    'images/arts/art2.jpeg',
    'images/arts/art3.jpeg',
    'images/arts/art4.jpg',
    'images/arts/art5.jpg',
    'images/arts/art6.png',
    'images/arts/art7.png',
    'images/arts/art8.png',
    'images/arts/art9.png',
  ];

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,

      // ===== appbar =====
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        // backgroundColor: Color(0xFF0F0F0F),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),

      // ===== body =====
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Stack(
              // overflow: Overflow.visible,
              children: [
                // ===== name section =====
                Positioned(
                  top: -50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/nprofile1.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 38.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nelson Kayisi',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.redAccent,
                                    size: 17,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, bottom: 3.0),
                                    child: Text(
                                      'Beni, RDC',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          wordSpacing: 2,
                                          letterSpacing: 4),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ===== following section =====
                Padding(
                  padding: const EdgeInsets.only(
                    top: 60.0,
                    right: 25.0,
                    bottom: 25.0,
                    left: 25.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '17k',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          Text(
                            'followers',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.white,
                        width: 0.2,
                        height: 22,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '387',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          Text(
                            'following',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.white,
                        width: 0.2,
                        height: 22,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 19, right: 19, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(33)),
                          gradient: LinearGradient(
                              colors: [Color(0xff6D0Eb5), Color(0xff4059F1)],
                              begin: Alignment.bottomRight,
                              end: Alignment.centerLeft),
                        ),
                        child: Text(
                          'follow',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),

                // ===== tags section =====
                Padding(
                  padding: const EdgeInsets.only(top: 125.0),
                  child: Container(
                    height: 50,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: tags.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Chip(
                              avatar: CircleAvatar(
                                backgroundColor: Colors.grey.shade800,
                                child: const Text('#'),
                              ),
                              label: Text(
                                tags[index],
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 1),
                              ),
                              backgroundColor: Color(0xDE646464),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),

          // ===== gallery section =====
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0),
              decoration: BoxDecoration(
                color: Color(0xffEFEFEF),
                borderRadius: BorderRadius.vertical(top: Radius.circular(34)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 20),
                    child: Text('Portfolio',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xFF0F0F0F),
                        )),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
                    height: 44,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 17.0, top: 2),
                            child: index == 2
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        categories[index],
                                        style: TextStyle(
                                          color: Color(0xFF4A218D),
                                          fontSize: 17,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 5.0),
                                        child: CircleAvatar(
                                          radius: 4,
                                          backgroundColor: Color(0xFF4A218D),
                                        ),
                                      ),
                                    ],
                                  )
                                : Text(
                                    categories[index],
                                    style: TextStyle(
                                      color: Colors.grey.withOpacity(0.9),
                                      fontSize: 17,
                                    ),
                                  ),
                          );
                        }),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      height: 300,
                      child: StaggeredGridView.countBuilder(
                        crossAxisCount: 4,
                        itemCount: images.length,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child:
                                Image.asset(images[index], fit: BoxFit.cover),
                          ),
                        ),
                        staggeredTileBuilder: (int index) =>
                            StaggeredTile.count(2, index.isEven ? 2 : 1),
                        mainAxisSpacing: 9,
                        crossAxisSpacing: 9,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
