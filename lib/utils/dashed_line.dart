import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_layout.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints){
                  return Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate((constraints.constrainWidth() / 15).floor(),(index) =>  SizedBox(
                      width: AppLayout.getWidth(5),
                      height: AppLayout.getHeight(1),
                      child: const DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.grey
                        ),
                      ),
                    )),
                  );
                }
                ),
              )
          ),
        ],
      ),
    );
  }
}
