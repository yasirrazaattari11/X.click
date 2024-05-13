import 'package:flutter/material.dart';
import 'package:i_xlick/Widgets/user_posts.dart';

import '../Screens/add_to_collection.dart';
import '../Screens/challenge_screen.dart';
class PopularTab extends StatelessWidget {
  const PopularTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserPost(
            profileImg: 'assets/image/thanpham.png',
            postImg: 'assets/image/thanpost.png',
            postTime: '1 hour ago',
            userName: 'Thanh Pham',
            comments: '20',
            likes: '125',
            widget: AddtoCollection()),
        SizedBox(height: 20,),
        UserPost(
            profileImg: 'assets/image/bruno.png',
            postImg: 'assets/image/brunopost.png',
            postTime: '1 hour ago',
            userName: 'Bruno',
            comments: '25',
            likes: '135',
            widget: AddtoCollection()),
        SizedBox(height: 20,),
        UserPost(
            profileImg: 'assets/image/thanpham.png',
            postImg: 'assets/image/thanpost2.jpg',
            postTime: '1 day ago',
            userName: 'Thanh Pham',
            comments: '30',
            likes: '150',
            widget: AddtoCollection()),
      ],
    );
  }
}
