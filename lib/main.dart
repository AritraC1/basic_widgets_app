import 'package:basic_widgets_app/utils/colors.dart';
import 'package:basic_widgets_app/widgetpages/geolocator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '30 Days Flutter Concepts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: AppColors.bgColor),
      home: const GeoLocatorWidget(),
      // home: const ImagePickerWidget(),
    );
  }
}
