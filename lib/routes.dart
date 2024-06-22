import 'package:flutter/material.dart';
import 'package:loginuinew/pages/Signup_page.dart';
import 'package:loginuinew/pages/login_page.dart';

class Routes {

  static const String loginRoute = "/";
  static const String signupRoute = "/signup";
  static Route<dynamic> generateRoute(RouteSettings settings)
  {
    switch(settings.name){
      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case signupRoute:
        return MaterialPageRoute(builder: (_) => SignupPage());
      default:
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }

}