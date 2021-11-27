import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:test_prj/constant/colors.dart';
import 'package:test_prj/constant/placeholders.dart';
import 'package:test_prj/constant/sizes.dart';
import 'package:test_prj/widgets/app_close_button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Container(
        color: ProjectColor.grey,
        child: Stack(
          children: [
            Container(
              color: ProjectColor.black.withOpacity(.08),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ProjectColor.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: ProjectSizes.contentPadding),
                              child: const Text(
                                "Title",
                                style: TextStyle(
                                  color: ProjectColor.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: ProjectSizes.contentPadding,
                                horizontal: ProjectSizes.contentPadding,
                              ),
                              child: const Text(
                                ProjectPlaceholder.shortLoremIpsum,
                                style: TextStyle(
                                  color: ProjectColor.black,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: 400,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ProjectColor.grey.withOpacity(.4),
                                  ),
                                  child: CupertinoScrollbar(
                                    isAlwaysShown: true,
                                    child: SingleChildScrollView(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: ProjectSizes.contentPadding,
                                            left: ProjectSizes.contentPadding,
                                            right: ProjectSizes.contentPadding),
                                        child: const Text(
                                          ProjectPlaceholder.longLoremIpsum,
                                          style: TextStyle(
                                            color: ProjectColor.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 6,
                                  left: 0,
                                  right: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color:
                                            ProjectColor.black.withOpacity(.5),
                                        boxShadow: [
                                          BoxShadow(
                                            color: ProjectColor.black
                                                .withOpacity(.7),
                                            spreadRadius: 1,
                                            blurRadius: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: ProjectSizes.contentPadding),
                                child: AppButton(
                                  label: "test button",
                                  onTap: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: ProjectSizes.contentPadding,
                        top: ProjectSizes.contentPadding,
                        child: const AppCloseButton(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  const AppButton({Key? key, required this.label, required this.onTap})
      : super(key: key);
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 17),
      decoration: BoxDecoration(
        color: Colors.purpleAccent,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        label.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
