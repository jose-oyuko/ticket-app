import 'package:flutter/material.dart';
import 'package:flutter_projects/base/res/style/app_styles.dart';
import 'package:flutter_projects/base/widgets/app_column_text_layout.dart';
import 'package:flutter_projects/base/widgets/app_layoutbuilder_widget.dart';
import 'package:flutter_projects/base/widgets/big_circle.dart';
import 'package:flutter_projects/base/widgets/big_dot.dart';
import 'package:flutter_projects/base/widgets/text_style_fourth.dart';
import 'package:flutter_projects/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // show departue and destination with icons, first line
                  Row(
                    children: [
                      TextStyleThird(text: ticket["from"]["code"]),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket["to"]["code"]),
                    ],
                  ),
                  // show departure and destination with names and time
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket["from"]["name"]),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["flying_time"]),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //  middle part of the ticket, dotted
            Container(
              margin: EdgeInsets.only(right: 16),
              color: AppStyles.tickectOrange,
              child: Row(
                children: [
                  const BigCircle(isRight: false),
                  Expanded(
                    child: AppLayoutbuilderWidget(randomDivider: 16, width: 6),
                  ),
                  BigCircle(isRight: true),
                ],
              ),
            ),
            //  lower part, orange, of the ticket
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.tickectOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // show departue and destination with icons, first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: ticket["date"],
                        bottomText: 'DATE',
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: 'Departure Time',
                        alignment: CrossAxisAlignment.center,
                      ),

                      AppColumnTextLayout(
                        topText: '23',
                        bottomText: ticket["number"].toString(),
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  // show departure and destination with names and time
                  const SizedBox(height: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
