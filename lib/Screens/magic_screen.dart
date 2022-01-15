import 'package:browse_ui/data/im_data.dart';
import 'package:browse_ui/widget/im_widget.dart';
import 'package:browse_ui/widget/mi_widget.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

import 'hand_screen.dart';

class MagicScreen extends StatelessWidget {
  String image =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKwKT8UKnnzeXN67YXCnTpGfOgoonwIlgwmErqd8CxTg4mMNFbnzAzx1AWBq-eXIcX3WM&usqp=CAU';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      child: Image.network(
                    image,
                    fit: BoxFit.cover,
                    width: 395,
                    height: 350,
                  )),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(HandScreen());
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                width: double.infinity,
                height: 475,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Minimalism'.tr(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('Lifestyle'.tr(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Icon(
                              Icons.play_circle_fill,
                              size: 60,
                              color: Colors.orange,
                            ))
                      ],
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('summry'.tr(),
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 20,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'nameD'.tr(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('follow'.tr())
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: imss.map((e) {
                                return MiWidget(e);
                              }).toList()),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (context.locale == Locale('en')) {
              context.setLocale(Locale('ar'));
            } else {
              context.setLocale(Locale('en'));
            }
          },
          child: Icon(Icons.language),
        )
    );
  }
}
