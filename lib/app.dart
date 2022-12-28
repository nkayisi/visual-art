import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:visual_art/app_colors.dart';

// My imports
import 'package:visual_art/ui.pages/profile_page.dart';
import 'package:visual_art/ui.pages/home_page.dart';
import 'package:visual_art/ui.pages/notification_page.dart';
import 'package:visual_art/ui.pages/favorite_page.dart';

import 'package:visual_art/ui.components/modal_bottom_sheet.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  // current tab
  int currentTab = 0;

  final List<Widget> ui_screens = [
    HomePage(),
    ProfilePage(),
    NotificationPage(),
    FavoritePage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.light,

      bottomNavigationBar: Container(
        width: double.infinity,
        height: 58,
        padding: EdgeInsets.only(right: 12, left: 12),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.vertical(top: Radius.circular(33)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = HomePage();
                  currentTab = 0;
                });
              },
              icon: Icon(Icons.home,
                  color: currentTab == 0
                      ? AppColors.secondaryAccent
                      : Colors.grey.withOpacity(0.6)),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = NotificationPage();
                  currentTab = 1;
                });
              },
              icon: Icon(
                Icons.notifications_active,
                color: currentTab == 1
                    ? AppColors.secondaryAccent
                    : Colors.grey.withOpacity(0.6),
              ),
            ),

            // ===== add buttom =====
            SizedBox(
              width: 66,
              child: Stack(children: [
                Positioned(
                  top: -25,
                  child: FloatingActionButton(
                    onPressed: () {
                      // modal bottom sheet
                      showModal(context);
                    },
                    child: Container(
                      height: 66,
                      width: 66,
                      child: Icon(Icons.camera_alt,
                          size: 30, color: Color(0xffEFEFEF)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(55)),
                        gradient: LinearGradient(
                            colors: [Color(0xff6615C1), Color(0xff484FDE)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffEFEFEF),
                            spreadRadius: 5,
                            blurRadius: 0,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),

            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = FavoritePage();
                  currentTab = 2;
                });
              },
              icon: Icon(
                Icons.favorite,
                color: currentTab == 2
                    ? AppColors.secondaryAccent
                    : Colors.grey.withOpacity(0.6),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = ProfilePage();
                  currentTab = 3;
                });
              },
              icon: Icon(
                Icons.person,
                color: currentTab == 3
                    ? AppColors.secondaryAccent
                    : Colors.grey.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),

      // ===== body =====
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ===== screens =====
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffEFEFEF),
                borderRadius: BorderRadius.vertical(top: Radius.circular(34)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      // overflow: Overflow.visible,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child:
                              PageStorage(bucket: bucket, child: currentScreen),
                        ),

                        // bottom navbar
                        // Container(
                        //   width: double.infinity,
                        //   height: 55,
                        //   padding: EdgeInsets.only(right: 12, left: 12),
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius:
                        //         BorderRadius.vertical(top: Radius.circular(33)),
                        //     // boxShadow: [
                        //     //   BoxShadow(
                        //     //     color: Color(0xFF000000),
                        //     //     spreadRadius: 1,
                        //     //     blurRadius: 8,
                        //     //     offset: const Offset(0, 1),
                        //     //   ),
                        //     // ],
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       IconButton(
                        //         onPressed: () {
                        //           setState(() {
                        //             currentScreen = HomePage();
                        //             currentTab = 0;
                        //           });
                        //         },
                        //         icon: Icon(Icons.home,
                        //             color: currentTab == 0
                        //                 ? Color(0xFF4A218D)
                        //                 : Colors.grey.withOpacity(0.6)),
                        //       ),
                        //       IconButton(
                        //         onPressed: () {
                        //           setState(() {
                        //             currentScreen = NotificationPage();
                        //             currentTab = 1;
                        //           });
                        //         },
                        //         icon: Icon(
                        //           Icons.notifications_active,
                        //           color: currentTab == 1
                        //               ? Color(0xFF4A218D)
                        //               : Colors.grey.withOpacity(0.6),
                        //         ),
                        //       ),

                        //       // m
                        //       SizedBox(
                        //         width: 33,
                        //       ),

                        //       IconButton(
                        //         onPressed: () {
                        //           setState(() {
                        //             currentScreen = FavoritePage();
                        //             currentTab = 2;
                        //           });
                        //         },
                        //         icon: Icon(
                        //           Icons.favorite,
                        //           color: currentTab == 2
                        //               ? Color(0xFF4A218D)
                        //               : Colors.grey.withOpacity(0.6),
                        //         ),
                        //       ),
                        //       IconButton(
                        //         onPressed: () {
                        //           setState(() {
                        //             currentScreen = ProfilePage();
                        //             currentTab = 3;
                        //           });
                        //         },
                        //         icon: Icon(
                        //           Icons.person,
                        //           color: currentTab == 3
                        //               ? Color(0xFF4A218D)
                        //               : Colors.grey.withOpacity(0.6),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
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
