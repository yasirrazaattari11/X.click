import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Widgets/category_container.dart';

class CollectionData extends StatefulWidget {
  const CollectionData({super.key});

  @override
  State<CollectionData> createState() => _CollectionDataState();
}

class _CollectionDataState extends State<CollectionData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Image(
            image: AssetImage('assets/image/blackbackarrow.png'),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Center(
            child: Text(
              'Title',
              style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        CategoryContainer(
                            title: '',
                            img: 'assets/image/post5.jpg',
                            cntheight: 300,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                        SizedBox(
                          height: 15,
                        ),
                        CategoryContainer(
                            title: '',
                            img: 'assets/image/post6.jpg',
                            cntheight: 300,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                        SizedBox(
                          height: 15,
                        ),
                        CategoryContainer(
                            title: '',
                            img: 'assets/image/post7.jpg',
                            cntheight: 300,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        CategoryContainer(
                            title: '',
                            img: 'assets/image/post8.jpg',
                            cntheight: 300,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                        SizedBox(
                          height: 15,
                        ),
                        CategoryContainer(
                            title: '',
                            img: 'assets/image/model1.jpg',
                            cntheight: 300,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                        SizedBox(
                          height: 15,
                        ),
                        CategoryContainer(
                            title: '',
                            img: 'assets/image/model2.jpg',
                            cntheight: 300,
                            cntwidth: 160,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
