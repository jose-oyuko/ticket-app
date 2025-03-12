import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/search/widgets/search_text_container.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xfff4f6fd),
      ),
      child: Row(
        children: [
          SearchTextContainer(text: "Airline Tickets", color: Colors.white),
          SearchTextContainer(
            text: "Hotel",
            color: Colors.transparent,
            right: false,
          ),
        ],
      ),
    );
  }
}
