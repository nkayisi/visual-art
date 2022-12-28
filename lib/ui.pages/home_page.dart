import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:visual_art/app_colors.dart';

import 'package:visual_art/ui.components/autocomplete.dart';

import 'package:visual_art/ui.components/top_artists.dart';

var scafoldKey = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      backgroundColor: Colors.transparent,

      // ===== appbar =====
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            onPressed: () {
              scafoldKey.currentState!.openDrawer();
            },
            icon: Image.asset(
              'images/menu_2.png',
              color: AppColors.dark,
              width: 33,
              height: 33,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),

      // ===== body =====
      body: Center(
        child: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            // overflow: Overflow.visible,
            fit: StackFit.expand,
            children: [
              //
              Positioned(
                top: -120,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(top: 145),
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/nprofile1.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("What's new,",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.white,
                              letterSpacing: 1,
                            )),
                        Text('Nelson Kayisi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                              letterSpacing: 1,
                            )),
                      ],
                    ),
                  ),
                ),
              ),

              //
              Container(
                height: 1000,
                margin: EdgeInsets.only(top: 115),
                // padding: EdgeInsets.only(top: 25, right: 20, left: 20),
                decoration: BoxDecoration(
                  color: Color(0xffEFEFEF),
                  borderRadius: BorderRadius.all(Radius.circular(34)),
                ),
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.only(
                          right: 20.0, left: 20.0, top: 20.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(34)),
                      ),
                      child: Material(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0, left: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      size: 30,
                                      color: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Search',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.mic_rounded,
                                  size: 30,
                                  color: AppColors.dark,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 419,
                      child: ListView(
                        children: [
                          //
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Top artists',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color(0xFF0F0F0F),
                                )),
                          ),

                          // top artists section
                          TopArtists(),

                          //
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Your feed',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color(0xFF0F0F0F),
                                )),
                          ),

                          // ===== fil d'oeuvre =====
                          Container(
                            child: Column(
                              children: [
                                //
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage('images/nprofile1.jpg'),
                                  ),
                                  title: Text(
                                    'Nelson Kayisi',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        fontSize: 17),
                                  ),
                                  subtitle: Text(
                                    '5 minutes ago',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                  trailing: Icon(Icons.more_vert),
                                ),

                                //
                                Container(
                                  height: 230,
                                  margin: EdgeInsets.only(left: 16, right: 23),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('images/arts/art2.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Positioned(
                                          child: Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white70,
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      bottom:
                                                          Radius.circular(12)),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Row(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .remove_red_eye,
                                                              color: AppColors
                                                                  .dark
                                                                  .withOpacity(
                                                                      0.8)),
                                                          Text(
                                                            '12K',
                                                            style: TextStyle(
                                                                color: AppColors
                                                                    .dark
                                                                    .withOpacity(
                                                                        0.8),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 33.0),
                                                        child: Row(
                                                          children: [
                                                            Icon(Icons.thumb_up,
                                                                color: AppColors
                                                                    .dark
                                                                    .withOpacity(
                                                                        0.8)),
                                                            Text(
                                                              '12K',
                                                              style: TextStyle(
                                                                  color: AppColors
                                                                      .dark
                                                                      .withOpacity(
                                                                          0.8),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                //
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: Row(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(Icons.comment,
                                                              color: AppColors
                                                                  .dark
                                                                  .withOpacity(
                                                                      0.8)),
                                                          Text(
                                                            '123',
                                                            style: TextStyle(
                                                                color: AppColors
                                                                    .dark
                                                                    .withOpacity(
                                                                        0.8),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 18.0,
                                                                right: 18.0),
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                                Icons
                                                                    .favorite_border,
                                                                color: AppColors
                                                                    .dark
                                                                    .withOpacity(
                                                                        0.8))
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.more_horiz,
                                                              color: AppColors
                                                                  .dark
                                                                  .withOpacity(
                                                                      0.8))
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
            ],
          ),
        ),
      ),

      // ===== drawer =====
      drawer: Drawer(
        child: Container(
          color: AppColors.light,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('This is the Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
