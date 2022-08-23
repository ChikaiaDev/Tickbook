import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String lable;
  final String subText;
  const AppDoubleTextWidget({Key? key, required this.lable, required this.subText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(lable,style: Styles.headLineStyle2,),
        InkWell(
          onTap: () {
            //print("you are tapped");
          },
          child: Text(subText,
              style: Styles.textStyle
                  .copyWith(color: Styles.primaryColor)),
        )
      ],
    );
  }
}
