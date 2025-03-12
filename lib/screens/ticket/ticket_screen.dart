import 'package:flutter/material.dart';
import 'package:flutter_projects/base/res/style/app_styles.dart';
import 'package:flutter_projects/base/utils/all_json.dart';
import 'package:flutter_projects/base/widgets/ticket_view.dart';
import 'package:flutter_projects/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text("Tickets", style: AppStyles.headLineStyle1),
          const SizedBox(height: 20),
          const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: TicketView(ticket: ticketList[0], isColor: true),
          ),
        ],
      ),
    );
  }
}
