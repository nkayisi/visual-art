import 'package:flutter/material.dart';

class TopArtists extends StatefulWidget {
  const TopArtists({Key? key}) : super(key: key);

  @override
  _TopArtistsState createState() => _TopArtistsState();
}

class _TopArtistsState extends State<TopArtists> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TopArtist(),
          TopArtist(),
          TopArtist(),
          TopArtist(),
        ],
      ),
    );
  }
}

class TopArtist extends StatefulWidget {
  const TopArtist({Key? key}) : super(key: key);

  @override
  _TopArtistState createState() => _TopArtistState();
}

class _TopArtistState extends State<TopArtist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, top: 16.0, bottom: 16.0, right: 8.0),
      child: Container(
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFCFCCD1),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Container(
          width: 230,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                // overflow: Overflow.visible,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 11.0, right: 5.0, left: 11.0),
                        child: Container(
                          width: 97,
                          height: 97,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            image: DecorationImage(
                                image: AssetImage('images/arts/art2.jpeg'),
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 11.0,
                          left: 5.0,
                          right: 11.0,
                        ),
                        child: Container(
                          width: 97,
                          height: 97,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            image: DecorationImage(
                                image: AssetImage('images/arts/art1.jpeg'),
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: -18,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(55)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 4,
                            blurRadius: 0,
                            offset: const Offset(0, 0),
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage('images/nprofile1.jpg'),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Nelson Kayisi',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text(
                  'Photographie - Beni, RDC',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.grey.withOpacity(0.5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
