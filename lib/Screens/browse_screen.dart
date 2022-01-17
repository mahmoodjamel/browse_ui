import 'package:browse_ui/data/im_data.dart';
import 'package:browse_ui/widget/hand_widget.dart';
import 'package:browse_ui/widget/im_widget.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
//
// import '../app_localization.dart';
import 'hand_screen.dart';
import 'magic_screen.dart';

class BrowseScreen extends StatelessWidget {
  void selectScreen(BuildContext ctx){
Navigator.of(ctx).push(MaterialPageRoute(builder: (_)
{
  return HandScreen();
}
));
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(411, 820),
    minTextAdapt: true,
    builder: () =>  MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,


      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const NetworkImage(
                    'https://i.pinimg.com/originals/b1/58/cd/b158cd75f7f6cacc2beefc40b523c965.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.green.withOpacity(0.6), BlendMode.darken))),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin:  EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 50.h),
                            child: Icon(
                              Icons.format_align_center,
                              size: 40,
                              color: Colors.grey[300],
                            )),
                      ],
                    ),
                     SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'mainTitle'.tr(),
                      style:  TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                     SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'supTitle'.tr(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                     SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: 350.w,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20.0),
                          fillColor: Colors.white38,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(width: 100.w, color: Colors.white),
                          ),
                          hintText: 'hint'.tr(),
                          hintStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: ims.map((e) {
                                return ImWidget(e);
                              }).toList()),
                            ),
                          ],
                        ),
                      ),
                    ),
                     SizedBox(
                      height: 50.h,
                    ),
                    const Divider(
                        color: Colors.grey,
                        thickness: 8,
                        indent: 170,
                        endIndent: 170),
                     SizedBox(
                      height: 10.h,
                    ),
                    SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,

                        ),
                        width: double.infinity,
                        height: 247.h,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Text(
                                    'hand'.tr(),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )),
                              const Divider(
                                  color: Colors.orange,
                                  thickness: 5,
                                  indent: 180,
                                  endIndent: 180),
                              Container(
                                child: Column(
                                  children:
                                      hands.map((e) => HandWidget(e)).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
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
      ),
    ),
    );
  }
}
