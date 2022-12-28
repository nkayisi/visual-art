import 'package:flutter/material.dart';
import 'package:visual_art/app_colors.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
    'images/arts/art5.jpg',
    'images/arts/art6.png',
    'images/arts/art7.png',
    'images/arts/art8.png',
    'images/arts/art9.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.light,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'My favorite arts',
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
        child: Column(children: [
          Expanded(
            child: Container(
              height: 620,
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset(images[index], fit: BoxFit.cover),
                  ),
                ),
                staggeredTileBuilder: (int index) =>
                    StaggeredTile.count(2, index.isEven ? 2 : 1),
                mainAxisSpacing: 9,
                crossAxisSpacing: 9,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
