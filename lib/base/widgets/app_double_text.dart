import 'package:flutter/material.dart';
import 'package:flutter_projects/base/res/style/app_styles.dart';
import 'package:flutter_projects/base/utils/app_routes.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({
    super.key,
    required this.bigText,
    required this.smallText,
  });
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2),
        InkWell(
          onTap: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          child: Text(
            smallText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
