import 'package:flutter/material.dart';
import 'package:i_xlick/Screens/challenge_screen.dart';
import 'package:i_xlick/Widgets/user_posts.dart';
class FollowingTab extends StatelessWidget {
  const FollowingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserPost(
            profileImg: 'assets/image/john.jpg',
            postImg: 'assets/image/johnpost.jpg',
            postTime: '10 hour ago',
            userName: 'John',
            comments: '10',
            likes: '50',
            widget: ChallengeScreen()),
        SizedBox(height: 20,),
        UserPost(
            profileImg: 'assets/image/harrybrook.jpg',
            postImg: 'assets/image/harrybrookpost.jpg',
            postTime: '12 hour ago',
            userName: 'Harry Brook',
            comments: '15',
            likes: '80',
            widget: ChallengeScreen()),
        SizedBox(height: 20,),
        UserPost(
            profileImg: 'assets/image/gibbs.jpg',
            postImg: 'assets/image/gibbspost.jpg',
            postTime: '17 hour ago',
            userName: 'Gibbs',
            comments: '30',
            likes: '120',
            widget: ChallengeScreen(),),
      ],
    );
  }
}
