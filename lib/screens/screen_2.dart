import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:test_prj/constant/colors.dart';
import 'package:test_prj/providers/horizontal_items.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) {
    double _cardHeight = 135;
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: _cardHeight,
              child: Consumer<HorizontalItemsProvider>(
                  builder: (context, provider, child) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: provider.itemsCount,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: _cardHeight,
                        width: MediaQuery.of(context).size.width * .8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFFE5E5E5),
                              spreadRadius: 4,
                              blurRadius: 4, // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            provider.generateItemAt(index),
                            style: const TextStyle(
                              color: ProjectColor.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
