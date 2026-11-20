import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Zesty Joker',
          postContent: 'Kamusta',
          numOfLikes: 100,
          avatarImage: 'assets/images/Zesty.jpg',
          date: 'October 11',
        ),
        NewsFeedCard(
          userName: 'Pareng Ruben',
          postContent: 'Kicking off the holiday season with ICpEP-NCR!',
          numOfLikes: 200,
          avatarImage: 'assets/images/Ruben.jpg',
          hasImage: true,
          postImage: 'assets/images/EdsaTraffic.jpg',
          date: 'December 2',
        ),
      ],
    );
  }
}
