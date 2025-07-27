import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/screen/DummyScreen.dart';
import 'package:youtube/screen/Subscription.dart';
import 'package:youtube/screen/createaccount.dart';
import 'package:youtube/screen/forgotpassword.dart';
import 'package:youtube/screen/homescreen.dart';
import 'package:youtube/screen/library.dart';
import 'package:youtube/screen/login_screen.dart';
import 'package:youtube/screen/notification.dart';
import 'package:youtube/screen/shorts.dart';
import 'package:youtube/screen/tabs.dart';
import 'package:youtube/screen/video_play.dart';
import 'package:youtube/themes/app_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primaryColor: AppColor.primaryColor),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        "/homescreen": (context) => MyDearApp(),
        "/forgotPassword": (context) => ForgotPasswordScreen(),
        "/createAccount": (context) => Createaccount(),
        '/tabs': (context) => Tabs(),
        "/Shorts": (context) => Shorts(),
        "/Library": (context) => Library(),
        "/VideoPlay": (context) => VideoPlay(),
        "/Notification": (context) => NotificationScreen(),
        "/Subscription": (context) => Subscription(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
