import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String lable;
  const AppDoubleTextWidget({Key? key, required this.lable}) : super(key: key);

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
          child: Text("View all",
              style: Styles.textStyle
                  .copyWith(color: Styles.primaryColor)),
        )
      ],
    );
  }
}
