import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/add_comment_screen.dart';
import 'package:i_xlick/Screens/add_to_collection.dart';
import 'package:i_xlick/Screens/friends_profile_screen.dart';
import 'package:i_xlick/Widgets/comment_box.dart';
import 'package:page_transition/page_transition.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  bool flag = false;
  int likes = 0;
  int selected_index = 0;
  Widget buildSelectedContent() {
    if (selected_index == 0) {
      return CommentScreen();
    } else if (selected_index == 1) {
      return AddComment();
    }
    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Image(
            image: AssetImage('assets/image/blackbackarrow.png'),
          ),
        ),
        title: selected_index == 1
            ? Center(
              child: Text(
                  'Comments',
                  style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
            )
            : Text(''),
        actions: selected_index == 0
            ?  [
                InkWell(
                  child: Image(
                    image: AssetImage('assets/image/blackheart.png'),
                  ),
                  onTap: () {
                    // Navigate to the desired screen here
                    Navigator.push(
                      context,
                      PageTransition(
                        child: AddtoCollection(), // Replace with your desired screen
                        type: PageTransitionType.fade,
                      ),
                    ); // Update the flag here
                    setState(() {
                      flag = true;
                    });
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                Image(
                  image: AssetImage('assets/image/blackpluscircle.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Image(image: AssetImage('assets/image/Upload.png')),
              ]
            : [
                Image(
                  image: AssetImage('assets/image/wditsquare.png'),
                ),
              ],
        elevation: 0,
      ),
      body: selected_index == 1
          ? AddComment()
          : Column(
              children: [
                Expanded(
                  flex: 9,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          child: const CircleAvatar(
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                                'assets/image/thanpham.png'),
                                          ),
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: FriendsProfile(), type: PageTransitionType.fade));
                                          },
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Thanh Pham',
                                          style: GoogleFonts.nunito(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '1 hour ago',
                                      style: GoogleFonts.nunito(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Image(
                                image: AssetImage('assets/image/thanpost.png'),
                                fit: BoxFit.fitWidth,
                                filterQuality: FilterQuality.high,
                                width: double.infinity,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '125',
                                          style: GoogleFonts.nunito(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Image(
                                          image: AssetImage(
                                              'assets/image/purpleeye.png'),
                                          filterQuality: FilterQuality.high,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '20',
                                          style: GoogleFonts.nunito(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        GestureDetector(
                                          child: const Image(
                                            image: AssetImage(
                                                'assets/image/comments.png'),
                                            filterQuality: FilterQuality.high,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              selected_index = 1;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          flag = true;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            flag == true
                                                ? (likes++).toString()
                                                : likes.toString(),
                                            style: GoogleFonts.nunito(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Image(
                                            image: AssetImage(
                                                'assets/image/likes.png'),
                                            filterQuality: FilterQuality.high,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Street Portrait',
                                  style: GoogleFonts.nunito(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "In this captivating black and white street night portrait, "
                                "the city's luminous lights serve as both a backdrop and a source of dramatic contrast. "
                                "The subject, shrouded in shadow, emerges from the darkness,"
                                " their features delicately illuminated by the soft, "
                                "ambient glow of urban illumination.",
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CommentBox(
                          imgSource: 'assets/image/harrybrook.jpg',
                          widget1: Text(
                            'Harry Brook',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          widget2: Text(
                            'Marvelous',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          widget3: Text(
                            '1 mins ago',
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CommentBox(
                          imgSource: 'assets/image/bruno.png',
                          widget1: Text(
                            'Bruno',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          widget2: Text(
                            'Fabulous',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          widget3: Text(
                            '2 mins ago',
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CommentBox(
                          imgSource: 'assets/image/john.jpg',
                          widget1: Text(
                            'John',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          widget2: Text(
                            'Nice! I Love it',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          widget3: Text(
                            '7 mins ago',
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: GestureDetector(
                            child: Text(
                              'See all',
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            onTap: () {
                              setState(() {
                                selected_index = 1;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/image/thanpham.png'),
                        ),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            textAlign: TextAlign.start,
                            textInputAction: TextInputAction.none,
                            obscureText: false,
                            autofocus: false,
                            style: GoogleFonts.poppins(fontSize: 14),
                            keyboardType: TextInputType.text,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefixIconColor: Colors.grey,
                              label: const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Add a comment'),
                                ),
                              ),
                              labelStyle: GoogleFonts.poppins(
                                  fontSize: 15, color: Colors.grey),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                            ),
                            onTap: () {
                              setState(() {
                                selected_index = 1;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
