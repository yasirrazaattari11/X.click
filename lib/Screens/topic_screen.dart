import 'package:flutter/material.dart';
import 'package:i_xlick/Widgets/app_bar.dart';
import 'package:i_xlick/Widgets/category_container.dart';

class TopicScreen extends StatefulWidget {
  const TopicScreen({super.key});

  @override
  State<TopicScreen> createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
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
                      title: 'PHOTOGRAPHY',
                      img: 'assets/image/discvr1.jpg',
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
                      title: 'UI DESIGN',
                      img: 'assets/image/dicovery.jpg',
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
                      title: 'ILLUSTRATION',
                      img: 'assets/image/discvr3.jpg',
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
                      title: 'MOVIE MAKING',
                      img: 'assets/image/movie.jpg',
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
                      title: 'SPORTS',
                      img: 'assets/image/sports.jpg',
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
