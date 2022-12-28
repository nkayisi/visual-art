import 'package:flutter/material.dart';

import '../ui.widgets/notification_widget.dart';

import '../app_colors.dart';

class NotificationPage extends StatefulWidget {
  // static final notifications = [];
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.light,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Notifications',
          style: TextStyle(color: AppColors.primary, fontSize: 25.0),
        ),
        elevation: 0.0,
        actions: [
          Icon(
            Icons.more_vert_rounded,
            color: AppColors.primary,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(children: [
          notificationWidget(
            'images/nprofil1.jpg',
            'Notification widget 1',
            '5 days ago',
          ),
          notificationWidget(
            'images/nprofil1.jpg',
            'Notification widget 1',
            '5 days ago',
          ),
          notificationWidget(
            'images/nprofil1.jpg',
            'Notification widget 1',
            '5 days ago',
          ),
          notificationWidget(
            'images/nprofil1.jpg',
            'Notification widget 1',
            '5 days ago',
          ),
          notificationWidget(
            'images/nprofil1.jpg',
            'Notification widget 1',
            '5 days ago',
          ),
          notificationWidget(
            'images/nprofil1.jpg',
            'Notification widget 1',
            '5 days ago',
          ),
          notificationWidget(
            'images/nprofil1.jpg',
            'Notification widget 1',
            '5 days ago',
          ),
          notificationWidget(
            'images/nprofil1.jpg',
            'Notification widget 1',
            '5 days ago',
          ),
          notificationWidget(
            'images/nprofil1.jpg',
            'Notification widget 1',
            '5 days ago',
          ),
          notificationWidget(
            'images/nprofil1.jpg',
            'Notification widget 1',
            '5 days ago',
          ),
        ]),
      ),
    );
  }
}
