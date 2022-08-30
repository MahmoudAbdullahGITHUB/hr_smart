
import 'package:flutter/material.dart';

import 'constants/Colors.dart';

class BtnWidget extends StatelessWidget {
  const BtnWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width * .2,
          height: 45.0,
          decoration: BoxDecoration(
            color: KAppSecondColor,
            borderRadius: BorderRadius.all(
                Radius.circular(2)),
            border: Border.all(
              color: KAppSecondColor,
              width: 0,
            ),
          ),
          child: Padding(
            padding:
            const EdgeInsets.only(top: 10.0),
            child: Text("SAVE",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(
                    fontSize: 14.0,
                    color: Colors.white)),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Container(
          width: width * .2,
          height: 45.0,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.all(
                Radius.circular(2)),
            border: Border.all(
              color: Colors.grey.shade100,
              width: 0,
            ),
          ),
          child: Padding(
            padding:
            const EdgeInsets.only(top: 10.0),
            child: Text("DISCARD",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(
                    fontSize: 14.0,
                    color: Colors.black)),
          ),
        )
      ],
    );
  }
}
