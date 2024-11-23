import 'package:flutter/material.dart';
import 'package:myapp/responsive/mobile_screen_layout.dart';
import 'package:myapp/responsive/responsive_layout_screen.dart';
import 'package:myapp/responsive/web_screen_layout.dart';
import 'package:myapp/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagran copy',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResposiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout()),
    );
  }
}
