import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/friends_profile_screen.dart';
import 'package:page_transition/page_transition.dart';
class CommentBox extends StatefulWidget {
  final String? imgSource;
  Color? clr;
  final Widget widget1;
  final Widget widget2;
  final Widget widget3;
  CommentBox({required this.imgSource,required this.widget1,required this.widget2,required this.widget3,this.clr});

  @override
  State<CommentBox> createState() => _CommentBoxState();
}

class _CommentBoxState extends State<CommentBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius:
          const BorderRadius.all(Radius.circular(20)),
          color: widget.clr??Colors.grey.withOpacity(0.2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, PageTransition(child: FriendsProfile(), type: PageTransitionType.fade));
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage:
                  AssetImage(widget.imgSource!),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  widget.widget1,
                  const SizedBox(
                    height: 5,
                  ),
                  widget.widget2,
                  const SizedBox(
                    height: 12,
                  ),
                  widget.widget3
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
