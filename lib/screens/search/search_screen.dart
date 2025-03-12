import 'package:flutter/material.dart';
import 'package:flutter_projects/base/res/style/app_styles.dart';
import 'package:flutter_projects/base/widgets/app_double_text.dart';
import 'package:flutter_projects/screens/search/widgets/app_text_icon.dart';
import 'package:flutter_projects/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flutter_projects/screens/search/widgets/find_tickets.dart';
import 'package:flutter_projects/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text(
            "What are \n you looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          SizedBox(height: 20),
          const AppTicketTabs(),
          const SizedBox(height: 25),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const SizedBox(height: 20),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: 'Arrival'),
          const SizedBox(height: 25),
          const FindTickets(),
          const SizedBox(height: 40),
          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "View all",
            func: () => {},
          ),
          const SizedBox(height: 15),

          const TicketPromotion(),
        ],
      ),
    );
  }
}
