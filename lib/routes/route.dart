import 'package:bloc_todos_app/screens/authentications/login.dart';
import 'package:bloc_todos_app/screens/authentications/register.dart';
import 'package:bloc_todos_app/screens/main/main.dart';
import 'package:bloc_todos_app/screens/profile/about_me.dart';
import 'package:bloc_todos_app/screens/profile/edit_profile.dart';
import 'package:bloc_todos_app/screens/profile/profile.dart';
import 'package:bloc_todos_app/screens/profile/qr_code.dart';
import 'package:bloc_todos_app/screens/splash/splash.dart';
import 'package:bloc_todos_app/screens/tasks/my_tasks/my_tasks.dart';
import 'package:bloc_todos_app/screens/tasks/recycle_bin/recycle_bin.dart';
import 'package:bloc_todos_app/screens/tasks/tasks_category/tasks_category.dart';
import 'package:flutter/material.dart';

import '../screens/not_found/not_found.dart';
import '../screens/tasks/tasks_completed/tasks_completed.dart';
import '../screens/tasks/tasks_list/tasks_list.dart';

Route<dynamic> appRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );
    case '/splash':
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );
    case '/login':
      return MaterialPageRoute(
        builder: (context) => const Login(),
      );
    case '/register':
      return MaterialPageRoute(
        builder: (context) => const Register(),
      );
    case '/main':
      return MaterialPageRoute(
        builder: (context) => MainScreen(),
      );
    case '/profile':
      return MaterialPageRoute(
        builder: (context) => Profile(),
      );
    case '/edit-profile':
      return MaterialPageRoute(
        builder: (context) => EditProfile(),
      );
    case '/support-developer':
      return MaterialPageRoute(
        builder: (context) => const QRCode(),
      );
    case '/about-us':
      return MaterialPageRoute(
        builder: (context) => const AboutMe(),
      );
    case '/tasks-list':
      final routeArguments = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => TasksList(
          routeArguments: routeArguments,
        ),
      );
    case '/my-tasks':
      return MaterialPageRoute(
        builder: (context) => MyTasks(),
      );
    case '/tasks-category':
      return MaterialPageRoute(
        builder: (context) => TasksCategory(),
      );
    case '/tasks-completed':
      final routeArguments = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => TasksCompletedList(
          routeArguments: routeArguments,
        ),
      );
    case '/recycle-bin':
      return MaterialPageRoute(
        builder: (context) => RecycleBin(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const NotFoundPage(),
      );
  }
}
