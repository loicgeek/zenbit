import 'package:flutter/widgets.dart';
import 'package:test_prj/constant/colors.dart';
import 'package:test_prj/constant/sizes.dart';

class AppCardWidget extends StatelessWidget {
  const AppCardWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ProjectSizes.cardHeight,
      width: MediaQuery.of(context).size.width * .78,
      decoration: BoxDecoration(
        color: ProjectColor.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFE5E5E5),
            spreadRadius: 5,
            blurRadius: 5, // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: ProjectColor.black,
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
