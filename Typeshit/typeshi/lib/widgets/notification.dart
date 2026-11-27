import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_text.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.name,
    required this.post,
    required this.description,
  });

  final String name;
  final String post;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          Icon(
            Icons.person,
            size: ScreenUtil().setSp(50),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(10),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: ScreenUtil().setSp(20),
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
                CustomText(
                  text: 'Posted: $post',
                  fontSize: ScreenUtil().setSp(13),
                  color: Colors.black,
                ),
                CustomText(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ],
            ),
          ),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
