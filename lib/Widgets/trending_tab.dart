import 'package:flutter/material.dart';
import 'package:i_xlick/Widgets/user_posts.dart';

import '../Screens/challenge_screen.dart';
class Trendingtab extends StatelessWidget {
  const Trendingtab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserPost(
            profileImg: 'assets/image/eliza.jpg',
            postImg: 'assets/image/elizapost.jpg',
            postTime: '10 min ago',
            userName: 'Eliza',
            comments: '100',
            likes: '700',
            widget: ChallengeScreen()),
        SizedBox(height: 20,),
        UserPost(
            profileImg: 'assets/image/elias.jpg',
            postImg: 'assets/image/eliaspost.jpg',
            postTime: '35 min ago',
            userName: 'Elias',
            comments: '120',
            likes: '850',
            widget: ChallengeScreen()),
        SizedBox(height: 20,),
        UserPost(
            profileImg: 'assets/image/steyn.jpg',
            postImg: 'assets/image/steynpost.jpg',
            postTime: '50 min ago',
            userName: 'Steyn',
            comments: '150',
            likes: '1000',
            widget: ChallengeScreen()),
      ],
    );
  }
}
