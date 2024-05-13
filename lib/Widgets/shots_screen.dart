import 'package:flutter/material.dart';
import 'package:i_xlick/Widgets/category_container.dart';

class ShotsScreen extends StatefulWidget {
  const ShotsScreen({super.key});

  @override
  State<ShotsScreen> createState() => _ShotsScreenState();
}

class _ShotsScreenState extends State<ShotsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: CategoryContainer(
                            title: '',
                            img: 'assets/image/post6.jpg',
                            cntheight: 300,
                            cntwidth: 160,
                            align: Alignment.topLeft,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: CategoryContainer(
                            title: '',
                            img: 'assets/image/post1.jpg',
                            cntheight: 120,
                            cntwidth: 160,
                            align: Alignment.topLeft,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5,top: 20),
                        child: CategoryContainer(
                            title: '',
                            img: 'assets/image/post8.jpg',
                            cntheight: 300,
                            cntwidth: 160,
                            align: Alignment.topLeft,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: CategoryContainer(
                            title: '',
                            img: 'assets/image/post2.jpg',
                            cntheight: 120,
                            cntwidth: 160,
                            align: Alignment.topLeft,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: CategoryContainer(
                            title: '',
                            img: 'assets/image/mypost.png',
                            cntheight: 120,
                            cntwidth: 160,
                            align: Alignment.topLeft,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: CategoryContainer(
                            title: '',
                            img: 'assets/image/post7.jpg',
                            cntheight: 300,
                            cntwidth: 160,
                            align: Alignment.topLeft,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20),
                        child: CategoryContainer(
                            title: '',
                            img: 'assets/image/post3.jpg',
                            cntheight: 120,
                            cntwidth: 160,
                            align: Alignment.topLeft,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: CategoryContainer(
                            title: '',
                            img: 'assets/image/post5.jpg',
                            cntheight: 300,
                            cntwidth: 160,
                            align: Alignment.topLeft,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
