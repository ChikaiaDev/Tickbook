import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/ticket_tab.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: AppLayout.getHeight(86),
                    width: AppLayout.getWidth(86),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18), horizontal: AppLayout.getWidth(18)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                      image: const DecorationImage(
                          fit: BoxFit.scaleDown,
                          image: AssetImage("assets/images/img_1.png")
                      )
                    ),
                  ),
                  Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Book Tickets", style: Styles.headLineStyle1,),
                      Text("New York", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                      Gap(5),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: const Color(0xfffef4f3),
                          borderRadius: BorderRadius.circular(AppLayout.getWidth(100))
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(3), vertical: AppLayout.getHeight(3)),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff526799)
                              ),
                              child: Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white,size: 14,),
                            ),
                            Gap(5),
                            Text("Premium Status", style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff526799)),),
                          ],

                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      InkWell(
                        onTap: (){},
                          child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300) )
                      )
                    ],
                  )
                ],
              ),
          Gap(AppLayout.getHeight(10)),
          Divider(color: Colors.grey.shade300,),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(18),
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                ),
                child: Row(
                  children: [
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,color: Styles.primaryColor,size: AppLayout.getWidth(30),),
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start  ,
                      children: [
                        Text("You've got a new award", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                        Text("You have 150 flights in a year", style: Styles.textStyle.copyWith(color: Colors.white, fontWeight: FontWeight.w300),),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  right: -35,
                  top: -45,
                  child:Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:Border.all(width: 18, color: Colors.indigo),
                        color: Colors.transparent
                    ),
                  )
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text("Accumulated kilometres ", style: Styles.headLineStyle2,),
          Gap(AppLayout.getHeight(25)),
          Container(
            child: Column(
              children: [
                Text(
                  "183739", style: TextStyle(fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kilometres accured", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500)),
                    Text("17 AUG 2022", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500)),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "23 032", secondText: "Kilometre", alignment: CrossAxisAlignment.start,),
                    AppColumnLayout(firstText: "Airline CO", secondText: "Recieved From", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "246", secondText: "Kilometre", alignment: CrossAxisAlignment.start,),
                    AppColumnLayout(firstText: "Kenya Airways", secondText: "Recieved From", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "12 454", secondText: "Kilometre", alignment: CrossAxisAlignment.start,),
                    AppColumnLayout(firstText: "Ethiopian Airways", secondText: "Recieved From", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(20),
                InkWell(
                  onTap: (){},
                  child: Text(
                    "How to get more Kilometres", style: TextStyle(color: Styles.primaryColor, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )


        ],
      ),

    );
  }
}
