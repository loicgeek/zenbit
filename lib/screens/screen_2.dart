import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:test_prj/constant/colors.dart';
import 'package:test_prj/constant/sizes.dart';
import 'package:test_prj/providers/horizontal_items.dart';
import 'package:test_prj/providers/vertical_items.dart';
import 'package:test_prj/widgets/app_card_widget.dart';
import 'package:test_prj/widgets/app_close_button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Container(
        padding: EdgeInsets.all(ProjectSizes.contentPadding),
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(ProjectSizes.contentPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      AppCloseButton(),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Section 1 (2)",
                      style: TextStyle(
                        color: ProjectColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Container(
                      height: ProjectSizes.cardHeight + 8 + 15,
                      padding: const EdgeInsets.only(top: 8, left: 5),
                      child: Consumer<HorizontalItemsProvider>(
                          builder: (context, provider, child) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: provider.itemsCount,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 15),
                              child: AppCardWidget(
                                text: provider.generateItemAt(index + 1),
                              ),
                            );
                          },
                        );
                      }),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Section 2 (4)",
                      style: TextStyle(
                        color: ProjectColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 8,
                      ),
                      child: Consumer<VerticalItemsProvider>(
                          builder: (context, provider, child) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: provider.itemsCount,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 10),
                              child: AppCardWidget(
                                text: provider.generateItemAt(index + 1),
                              ),
                            );
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
