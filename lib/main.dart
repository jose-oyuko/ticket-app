import 'package:flutter/material.dart';
import 'package:flutter_projects/base/bottom_nav_bar.dart';
import 'package:flutter_projects/base/utils/app_routes.dart';
import 'package:flutter_projects/screens/home/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // theme: ThemeData(),
      routes: {
        AppRoutes.homePage: (context) => const BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
      },
    );
  }
}
