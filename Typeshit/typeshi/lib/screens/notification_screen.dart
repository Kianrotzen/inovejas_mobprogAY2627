import 'package:flutter/material.dart';
import '../widgets/notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  static const List<Map<String, String>> _notifications = [
    {'name': 'Zesty Joker', 'post': 'Where is the Batman?', 'description': 'Posted 2 minutes ago'},
    {'name': 'Pareng Ruben', 'post': 'Kicking off the holiday season', 'description': 'Posted 10 minutes ago'},
    {'name': 'Maria Santos', 'post': 'Finished my mobile programming lab', 'description': 'Posted 25 minutes ago'},
    {'name': 'Juan Dela Cruz', 'post': 'Coffee after class?', 'description': 'Posted 40 minutes ago'},
    {'name': 'Angela Reyes', 'post': 'Sunset at Manila Bay', 'description': 'Posted 1 hour ago'},
    {'name': 'Carlo Mendoza', 'post': 'Flutter hot reload is magic', 'description': 'Posted 2 hours ago'},
    {'name': 'Cat Woman', 'post': 'The Pink Panther?', 'description': 'Posted 3 hours ago'},
    {'name': 'Paolo Garcia', 'post': 'Traffic on EDSA again', 'description': 'Posted 4 hours ago'},
    {'name': 'Harvey Dent', 'post': 'New week, new goals', 'description': 'Posted 5 hours ago'},
    {'name': 'Lea Domingo', 'post': 'Our team demo went great', 'description': 'Posted 6 hours ago'},
    {'name': 'Zesty Joker', 'post': 'Happy Fire Friday!', 'description': 'Posted 7 hours ago'},
    {'name': 'Pareng Ruben', 'post': 'ICpEP-NCR meeting', 'description': 'Posted 8 hours ago'},
    {'name': 'Poison Ivy', 'post': 'Making another concoction', 'description': 'Posted 9 hours ago'},
    {'name': 'Juan Dela Cruz', 'post': 'Lunch time', 'description': 'Posted 10 hours ago'},
    {'name': 'Angela Reyes', 'post': 'Weekend plans?', 'description': 'Posted yesterday'},
    {'name': 'Carlo Mendoza', 'post': 'Learning Provider package', 'description': 'Posted yesterday'},
    {'name': 'Bea Villanueva', 'post': 'Exam reminders', 'description': 'Posted yesterday'},
    {'name': 'Bane', 'post': 'Destruction for Gotham City', 'description': 'Posted 2 days ago'},
    {'name': 'Kim Navarro', 'post': 'Throwback photos', 'description': 'Posted 2 days ago'},
    {'name': 'Batman', 'post': 'Where are you Joker?', 'description': 'Posted 3 days ago'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _notifications.length,
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final item = _notifications[index];
        return NotificationItem(
          name: item['name']!,
          post: item['post']!,
          description: item['description']!,
        );
      },
    );
  }
}
