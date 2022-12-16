
import 'package:flutter/material.dart';

import 'config/themes/app_theme.dart';
import 'features/cart/presentation/screens/cart_screen.dart';


class JobTaskApp extends StatelessWidget {
  const JobTaskApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: CartScreen()
    );
  }
}