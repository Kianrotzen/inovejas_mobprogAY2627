import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

// Incase I want to add more posts. Each post can has likes, user, avatar image, and also a placeholder an image.
// With all this freewill I will make a chatting system for the people of Gotham City
class _Post {
  final String userName;
  final String content;
  final String date;
  final int likes;
  final bool hasImage;
  final String? avatarImage;
  final String? postImage;

  const _Post({
    required this.userName,
    required this.content,
    required this.date,
    this.likes = 0,
    this.hasImage = false,
    this.avatarImage,
    this.postImage,
  });
}

const List<_Post> _posts = [
  _Post(
    userName: 'Zesty Joker',
    content: 'Kamusta',
    date: 'October 11',
    likes: 100,
    avatarImage: 'assets/images/Zesty.jpg',
  ),
  _Post(
    userName: 'Pareng Ruben',
    content: 'Kicking off the holiday season with ICpEP-NCR!',
    date: 'December 2',
    likes: 200,
    hasImage: true,
    avatarImage: 'assets/images/Ruben.jpg',
    postImage: 'assets/images/EdsaTraffic.jpg',
  ),
  _Post(
    userName: 'Maria Santos',
    content: 'Finally finished my mobile programming lab!',
    date: 'December 3',
    likes: 45,
    hasImage: true, // placeholder
  ),
  _Post(
    userName: 'Juan Dela Cruz',
    content: 'Anyone up for coffee after class?',
    date: 'December 3',
    likes: 12,
  ),
  _Post(
    userName: 'Angela Reyes',
    content: 'Sunset at Manila Bay today.',
    date: 'December 4',
    likes: 310,
    hasImage: true, // placeholder
  ),
  _Post(
    userName: 'Carlo Mendoza',
    content: 'Flutter hot reload is magic.',
    date: 'December 5',
    likes: 87,
  ),
  _Post(
    userName: 'Bea Villanueva',
    content: 'Study group tonight at the library, join us!',
    date: 'December 6',
    likes: 64,
    hasImage: true, // placeholder
  ),
  _Post(
    userName: 'Paolo Garcia',
    content: 'Traffic on EDSA again...',
    date: 'December 7',
    likes: 10,
  ),
  _Post(
    userName: 'Kim Navarro',
    content: 'New week, new goals.',
    date: 'December 8',
    likes: 150,
  ),
  _Post(
    userName: 'Lea Domingo',
    content: 'Our team demo went great today!',
    date: 'December 9',
    likes: 230,
    hasImage: true, // placeholder
  ),
];

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        final post = _posts[index];
        return NewsFeedCard(
          userName: post.userName,
          postContent: post.content,
          date: post.date,
          numOfLikes: post.likes,
          hasImage: post.hasImage,
          avatarImage: post.avatarImage,
          postImage: post.postImage,
        );
      },
    );
  }
}
