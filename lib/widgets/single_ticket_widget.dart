import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/dashed_line.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_styles.dart';

class SingleTicketWidget extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const SingleTicketWidget({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  SizedBox(
      width: size.width,
      height: AppLayout.getHeight(550),
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],style: Styles.headLineStyle3.copyWith(color: Colors.black)),
                      const Spacer(),
                      const ThicContainer(isColor: true,),
                      Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: AppLayout.getHeight(24),
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          (constraints.constrainWidth() / 6)
                                              .floor(),
                                              (index) => SizedBox(
                                            width: AppLayout.getWidth(3),
                                            height: AppLayout.getHeight(1),
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.lightBlue.shade200)),
                                          )),
                                    );
                                  },
                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.6,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.lightBlue.shade200,
                                  ),
                                ),
                              ),
                            ],
                          )),
                      const ThicContainer(isColor: true,),
                      const Spacer(),
                      Text(ticket['to']['code'],style: Styles.headLineStyle3.copyWith(color: Colors.black))
                    ],
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['name'],style: Styles.headLineStyle4),
                      ),
                      Text(ticket['flying_time'],style:Styles.headLineStyle4.copyWith(color: Colors.black),),
                      SizedBox(
                        width: 100,
                        child: Text(ticket['to']['name'],textAlign: TextAlign.end,style: Styles.headLineStyle4),
                      ),
                    ],
                  )
                ],
              ),
            ),

            /*
            showing the orange part of the card
            */
            const DashedLine(),
            /*
            showing the bottom part of the card
            */
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
              ),
              padding: const EdgeInsets.only(left:16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: ticket['date'], secondText: "DATE", alignment: CrossAxisAlignment.start,),
                      AppColumnLayout(firstText: ticket['departure_time'], secondText: "Departure Time", alignment: CrossAxisAlignment.center,),
                      AppColumnLayout(firstText: ticket['number'].toString(), secondText: "Number", alignment: CrossAxisAlignment.end,),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 1, width: size.width*0.6),
            Container(
              padding: const EdgeInsets.only(left:16, top: 15, right: 16, bottom: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(firstText: "Ian Cheboi", secondText: "Passanger", alignment: CrossAxisAlignment.start,),
                      AppColumnLayout(firstText: "4983 78639300", secondText: "Passport", alignment: CrossAxisAlignment.end),
                    ],
                  )
                ],
              ),
            ),
            const DashedLine(),
            Container(
              padding: const EdgeInsets.only(left:16, top: 10, right: 16, bottom: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(firstText: "0055 444 77147", secondText: "E-ticket Number", alignment: CrossAxisAlignment.start,),
                      AppColumnLayout(firstText: "B2SG28", secondText: "Booking Code", alignment: CrossAxisAlignment.end),
                    ],
                  )
                ],
              ),
            ),
            const DashedLine(),
            Container(
              padding: const EdgeInsets.only(left:16, top: 10, right: 16, bottom: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/visa.png', scale: AppLayout.getWidth(11),),
                              Text(" *** 2576", style: Styles.headLineStyle3.copyWith(color: Colors.black),)
                            ],
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text("Payment method",style:Styles.headLineStyle3),
                        ],
                      ),
                      AppColumnLayout(firstText: "KES. 7,867", secondText: "Price", alignment: CrossAxisAlignment.end),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 1, width: size.width*0.6),
            /*
            Bar code generator
             */

            Container(
              padding: const EdgeInsets.only(left:16, top: 10, right: 16, bottom: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  data: 'Hello Flutter',
                  drawText: false,
                  color: Styles.textColor,
                  width: double.infinity,
                  height: 70,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
