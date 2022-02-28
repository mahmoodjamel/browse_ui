import 'package:browse_ui/data/im_data.dart';
import 'package:browse_ui/widget/hand_widget.dart';
// import 'package:browse_ui/widget/im_widget.dart';
import 'package:browse_ui/widget/top_widget.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'browse_screen.dart';
import 'magic_screen.dart';

class HandScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: const NetworkImage(
                  'https://i.pinimg.com/originals/b1/58/cd/b158cd75f7f6cacc2beefc40b523c965.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.green.withOpacity(0.6), BlendMode.darken))
      ),
      child: Scaffold(
        drawerScrimColor: Colors.grey.withOpacity(0.8),
        backgroundColor: Colors.transparent,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                        child: Icon(
                          Icons.format_align_center,
                          size: 40,
                          color: Colors.grey[300],
                        )),
                  ],
                ),

                const Divider(
                    color: Colors.white38,
                    thickness: 8,
                    indent: 170,
                    endIndent: 170),
SizedBox(height: 10.h,),
                SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,

                    ),

                    width: double.infinity,
                    height: 659.h,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                'hand2'.tr(),
                                style:
                                    TextStyle(color: Colors.black, fontSize: 20),
                              )),
                          Divider(
                              color: Colors.orange,
                              thickness: 5,
                              indent: 180,
                              endIndent: 180),
                          Container(
                            child: SingleChildScrollView(
                              child: Column(
                                children: hands.map((e) => HandWidget(e)).toList(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  'top'.tr(),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                        children: tops.map((e) {
                                      return TopWidget(e);
                                    }).toList()),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'nameD'.tr(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('follow'.tr()),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    InkWell(
                        child: Text('Magic'.tr(), style: TextStyle(fontSize: 20)),
                        onTap: () => Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return MagicScreen();

                            })),
                    ),
                    Spacer(),
                    SizedBox(width: 30.w,),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    InkWell(
                        child: Text('screenone'.tr(), style: TextStyle(fontSize: 20)),
                        onTap: () => Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return BrowseScreen();
                        }))),
                    Spacer(),
                    SizedBox(width: 30.w,),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),

              ],
            ),
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
      ),
    );
  }
}
