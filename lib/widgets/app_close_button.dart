import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:test_prj/constant/colors.dart';

class AppCloseButton extends StatelessWidget {
  const AppCloseButton({Key? key, this.onTap}) : super(key: key);
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Stack(
        children: [
          Image.asset(
            "assets/images/oblic_line.png",
            color: ProjectColor.black,
          ),
          Transform.rotate(
            angle: pi / 2,
            child: Image.asset(
              "assets/images/oblic_line.png",
              color: ProjectColor.black,
            ),
          ),
        ],
      ),
    );
  }
}
