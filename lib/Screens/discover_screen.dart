import 'package:flutter/material.dart';
import 'package:i_xlick/Screens/collection_screen.dart';
import 'package:i_xlick/Screens/topic_screen.dart';
import 'package:i_xlick/Widgets/app_bar.dart';
import 'package:i_xlick/Widgets/category_container.dart';
import 'package:i_xlick/Widgets/dicover_row_texts.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RowTexts(title: 'Topic',widget: TopicScreen(),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryContainer(
                            title: 'PHOTOGRAPHY',
                            img: 'assets/image/discvr1.jpg',
                            cntheight: 120,
                            cntwidth: 150,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0,
                          ),
                          SizedBox(width: 10,),
                          CategoryContainer(
                            title: 'UI DESIGN',
                            img: 'assets/image/dicovery.jpg',
                            cntheight: 120,
                            cntwidth: 150,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0,
                          ),
                          SizedBox(width: 10,),
                          CategoryContainer(
                            title: 'ILLUSTRATION',
                            img: 'assets/image/discvr3.jpg',
                            cntheight: 120,
                            cntwidth: 150,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RowTexts(title: 'Collection',widget: CollectionScreen(),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryContainer(
                            title: 'PORTRAIT PHOTOGRAPHY',
                            img: 'assets/image/portraitcollage.jpg',
                            cntheight: 160,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingRight: 0,
                            paddingLeft: 0,
                          ),
                          SizedBox(width: 10,),
                          CategoryContainer(
                            title: 'MUSIC VIDEO',
                            img: 'assets/image/musiccollage.jpg',
                            cntheight: 160,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingRight: 0,
                            paddingLeft: 0,
                          ),
                          SizedBox(width: 10,),
                          CategoryContainer(
                            title: 'SKETCHING',
                            img: 'assets/image/sketchingcollage.jpg',
                            cntheight: 160,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingRight: 0,
                            paddingLeft: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RowTexts(title: 'Collection',widget: CollectionScreen(),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryContainer(
                            title: 'PORTRAIT PHOTOGRAPHY',
                            img: 'assets/image/portraitcollage.jpg',
                            cntheight: 160,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingRight: 0,
                            paddingLeft: 0,
                          ),
                          SizedBox(width: 10,),
                          CategoryContainer(
                            title: 'MUSIC VIDEO',
                            img: 'assets/image/musiccollage.jpg',
                            cntheight: 160,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingRight: 0,
                            paddingLeft: 0,
                          ),
                          SizedBox(width: 10,),
                          CategoryContainer(
                            title: 'SKETCHING',
                            img: 'assets/image/sketchingcollage.jpg',
                            cntheight: 160,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingRight: 0,
                            paddingLeft: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RowTexts(title: 'Collection',widget: CollectionScreen(),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryContainer(
                            title: 'PORTRAIT PHOTOGRAPHY',
                            img: 'assets/image/portraitcollage.jpg',
                            cntheight: 160,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingRight: 0,
                            paddingLeft: 0,
                          ),
                          SizedBox(width: 10,),
                          CategoryContainer(
                            title: 'MUSIC VIDEO',
                            img: 'assets/image/musiccollage.jpg',
                            cntheight: 160,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingRight: 0,
                            paddingLeft: 0,
                          ),
                          SizedBox(width: 10,),
                          CategoryContainer(
                            title: 'SKETCHING',
                            img: 'assets/image/sketchingcollage.jpg',
                            cntheight: 160,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingRight: 0,
                            paddingLeft: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
