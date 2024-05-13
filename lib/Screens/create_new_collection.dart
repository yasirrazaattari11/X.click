import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/comment_screen.dart';
import 'package:i_xlick/Widgets/custom_buttons.dart';
import 'package:i_xlick/Widgets/custom_fields.dart';

class CreateCollection extends StatefulWidget {
  const CreateCollection({super.key});

  @override
  State<CreateCollection> createState() => _CreateCollectionState();
}

class _CreateCollectionState extends State<CreateCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 350),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.6)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: GestureDetector(
                            child: Image(
                              image:
                                  AssetImage('assets/image/collectioncross.png'),
                            ),
                            onTap: (){
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                    ),
                                    CustomTextFields(
                                        keyboardType: TextInputType.text,
                                        labelText: 'Type name',
                                        obscureText: false,
                                        sizeAll: 15),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    GradientButtons(
                                        text: 'CREATE COLLECTION',
                                        widget: CommentScreen()),
                                    SizedBox(
                                      height: 295,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
