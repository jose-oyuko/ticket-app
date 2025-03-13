import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/base/res/media.dart';
import 'package:flutter_projects/base/res/style/app_styles.dart';
import 'package:flutter_projects/base/utils/all_json.dart';
import 'package:flutter_projects/base/widgets/app_column_text_layout.dart';
import 'package:flutter_projects/base/widgets/app_layoutbuilder_widget.dart';
import 'package:flutter_projects/base/widgets/ticket_view.dart';
import 'package:flutter_projects/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flutter_projects/screens/ticket/widgets/ticket_positioned_circle.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
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
              SizedBox(height: 1),
              Container(
                margin: EdgeInsets.only(left: 15, right: 31),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "Flutter DB",
                          bottomText: 'Passanger',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "5221 36868",
                          bottomText: 'passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppLayoutbuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "43543345 45656",
                          bottomText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "B45465 ",
                          bottomText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppLayoutbuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(AppMedia.visaCrd, scale: 11),
                                Text(
                                  " *** 2462",
                                  style: AppStyles.headLineStyle3,
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Payment method",
                              style: AppStyles.headLineStyle4,
                            ),
                          ],
                        ),
                        AppColumnTextLayout(
                          topText: "\$249.99",
                          bottomText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1),
              // bottom of the ticket, bar code
              Container(
                margin: EdgeInsets.only(left: 15, right: 30),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      data: 'dvfvfd',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: AppStyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              // colorful ticket
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
          TicketPositionedCircle(pos: true),
          TicketPositionedCircle(pos: null),
        ],
      ),
    );
  }
}
