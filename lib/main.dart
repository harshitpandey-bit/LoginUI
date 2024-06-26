import 'package:flutter/material.dart';
import 'package:loginuinew/pages/Signup_page.dart';
import 'package:loginuinew/routes.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(30, 88, 241, 1)),
        useMaterial3: true,
      ),

      onGenerateRoute: Routes.generateRoute,
    );
  }
}

