import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/challenge_screen.dart';
import 'package:i_xlick/Screens/comment_screen.dart';
import 'package:i_xlick/Screens/friends_profile_screen.dart';
import 'package:page_transition/page_transition.dart';

class UserPost extends StatelessWidget {
  final String profileImg;
  final String postImg;
  final String userName;
  final String postTime;
  final String comments;
  final String likes;
  final Widget widget;
  UserPost(
      {required this.profileImg,
      required this.postImg,
      required this.postTime,
      required this.userName,
      required this.comments,
      required this.likes,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(profileImg),
                      ),
                      onTap: (){
                        Navigator.push(context, PageTransition(child: FriendsProfile(), type: PageTransitionType.fade));
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      userName,
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
                Text(
                  postTime,
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: Image(
              image: AssetImage(postImg),
              width: double.infinity,
              filterQuality: FilterQuality.high,
            ),
            onTap: (){
              Navigator.push(context, PageTransition(child: ChallengeScreen(), type: PageTransitionType.fade));
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(child: widget, type: PageTransitionType.fade));
                  },
                  child: Container(
                    child: Image(
                      image: AssetImage('assets/image/pluscircle.png'),
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      comments,
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: GestureDetector(
                        child: Image(
                          image: AssetImage('assets/image/comments.png'),
                          filterQuality: FilterQuality.high,
                        ),
                        onTap: (){
                          Navigator.push(context, PageTransition(child: CommentScreen(), type: PageTransitionType.fade));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      likes,
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      child: Image(
                        image: AssetImage('assets/image/likes.png'),
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
