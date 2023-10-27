import 'package:flutter/material.dart';
import 'package:mystical_bolivia/widgets/app_large_text.dart';
import 'package:mystical_bolivia/widgets/responsive_button.dart';

import '../widgets/app_text.dart';

class Home extends StatelessWidget {
  final List<String> images = ['scz.png', 'cbba.png', 'lpz.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/places/${images[index]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "Descubre"),
                          AppText(
                            text: "Bolivia",
                            size: 30,
                            color: Color(0xFFFF725E),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: AppText(
                              text:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                              size: 14,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ResponsiveButton()
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
