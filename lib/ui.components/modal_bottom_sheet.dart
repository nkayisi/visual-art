import 'package:flutter/material.dart';

//
void showModal(BuildContext context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
            decoration: BoxDecoration(
                color: Color(0xffEFEFEF),
                borderRadius: BorderRadius.vertical(top: Radius.circular(23))),
            child: Column(
              children: [
                Container(
                  height: 230,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                    image: DecorationImage(
                        image: AssetImage('images/nprofile1.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.image_outlined),
                          label: Text(
                            'Gallery',
                            style: TextStyle(fontSize: 18),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_outlined),
                          label: Text(
                            'Camera',
                            style: TextStyle(fontSize: 18),
                          )),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel'.toUpperCase()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Save'.toUpperCase()),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ));
}
