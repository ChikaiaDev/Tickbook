import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String tabOne;
  final String tabTwo;
  const AppTicketTabs({Key? key, required this.tabOne, required this.tabTwo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
        color: Colors.white60,
        ),
        child: Row(
          children: [
            Container(
              width: size.width*.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8), horizontal: AppLayout.getWidth(5)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.white,
              ),
              child: Center(child: Text(tabOne, style: TextStyle( fontWeight: FontWeight.w500),)),
            ),
            FittedBox(
              child: Container(
                width: size.width*.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8), horizontal: AppLayout.getWidth(5)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                ),
                child: Center(child: Text(tabTwo,  style: TextStyle( fontWeight: FontWeight.w500))),
              ),
            ),
          ],
        ),
    );
  }
}
