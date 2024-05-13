import 'package:flutter/material.dart';

import '../Widgets/app_bar.dart';
import '../Widgets/category_container.dart';
class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Expanded(
            flex: 1,
            child: CustomAppbar(
              padding: 0,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    CategoryContainer(
                      title: ' PORTRAIT PHOTOGRAPHY',
                      img: 'assets/image/portraitcollage.jpg',
                      cntheight: 150,
                      cntwidth: double.infinity,
                      align: Alignment.centerLeft,
                      padding: 0,
                      paddingLeft: 20,
                      paddingRight: 0,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryContainer(
                      title: 'MUSIC VIDEO',
                      img: 'assets/image/musiccollage.jpg',
                      cntheight: 150,
                      cntwidth: double.infinity,
                      align: Alignment.centerRight,
                      padding: 0,
                      paddingRight: 20,
                      paddingLeft: 0,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryContainer(
                      title: 'SKETCHING',
                      img: 'assets/image/sketchingcollage.jpg',
                      cntheight: 150,
                      cntwidth: double.infinity,
                      align: Alignment.centerLeft,
                      padding: 0,
                      paddingLeft: 20,
                      paddingRight: 0,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryContainer(
                      title: 'SPORTS CAR',
                      img: 'assets/image/carscollage.jpg',
                      cntheight: 150,
                      cntwidth: double.infinity,
                      align: Alignment.centerRight,
                      padding: 0,
                      paddingLeft: 0,
                      paddingRight: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryContainer(
                      title: 'SHOWS',
                      img: 'assets/image/showscollage.jpg',
                      cntheight: 150,
                      cntwidth: double.infinity,
                      align: Alignment.centerLeft,
                      padding: 0,
                      paddingLeft: 20,
                      paddingRight: 0,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
