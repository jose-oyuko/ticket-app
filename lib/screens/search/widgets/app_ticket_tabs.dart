import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/search/widgets/search_text_container.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({
    super.key,
    required this.firstTab,
    required this.secondTab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xfff4f6fd),
      ),
      child: Row(
        children: [
          SearchTextContainer(
            text: firstTab,
            color: Colors.white,
            right: false,
          ),
          SearchTextContainer(text: secondTab, color: Colors.transparent),
        ],
      ),
    );
  }
}
