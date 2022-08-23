import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/ticket_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are \n you looking for?", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getHeight(40)),),
          Gap(AppLayout.getHeight(20)),
          AppTicketTabs(tabOne: 'Airtline tickets', tabTwo: 'Hotels'),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, description: 'Departure'),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, description: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18), horizontal: AppLayout.getWidth(18)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              color: const Color(0xd91130ce),
            ),
            child: Center(
              child: Text('Find tickets', style: Styles.textStyle.copyWith(color: Colors.white, fontSize: 24), textAlign: TextAlign.center,)
            ),
          ),
          Gap(AppLayout.getHeight(30)),
          const AppDoubleTextWidget(lable: 'Upcomming Flights', subText: 'View All',),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15) ),
                width: size.width*0.44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 2,
                      spreadRadius: 2
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/sit.jpg")
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(5)),
                    Text(
                        "20% discount on the early booking of this flight. Don't miss out this chance ",
                        style: Styles.headLineStyle2)
                  ],
                )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: AppLayout.getHeight(174),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                          color: const Color(0xff3ab8b8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                            Gap(AppLayout.getHeight(10)),
                            Text("Take the survey about our services and stand a chance to get amazing discounts on flights!", style: Styles.headLineStyle3.copyWith(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                          top: -35,
                          child:Container(
                              padding: EdgeInsets.all(AppLayout.getHeight(30)),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:Border.all(width: 18, color: Color(0xff189999)),
                                  color: Colors.transparent
                              ),
                          )
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    width: size.width*.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18), horizontal: AppLayout.getWidth(18)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                      color: Colors.redAccent
                    ),
                    child: Column(
                      children: [
                        Text("Take Love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontSize: 24), textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 38)
                              ),
                              TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize: 50)
                              ),
                              TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: 38)
                              )
                            ]
                          )
                        )

                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
