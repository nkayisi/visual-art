import 'package:flutter/material.dart';
import 'package:visual_art/app_colors.dart';

Widget notificationWidget(not_image, not_title, not_time) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Container(
      height: 75.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/nprofile1.jpg'),
          radius: 30,
        ),
        title: Text(
          not_title,
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: Text(
          not_time,
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Icon(
          Icons.circle_notifications_sharp,
          color: AppColors.primary,
        ),
      ),
    ),
  );
}
