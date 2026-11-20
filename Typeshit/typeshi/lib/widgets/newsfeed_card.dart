import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String? avatarImage;
  final String? postImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.hasImage = false,
    this.avatarImage,
    this.postImage,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: ScreenUtil().setSp(18),
                      backgroundImage: avatarImage != null
                          ? AssetImage(avatarImage!)
                          : null,
                      child: avatarImage == null
                          ? const Icon(Icons.person)
                          : null,
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: userName,
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                              text: date,
                              fontSize: ScreenUtil().setSp(12),
                              color: Colors.grey,
                            ),
                            SizedBox(width: ScreenUtil().setWidth(3)),
                            Icon(
                              Icons.public,
                              color: Colors.grey,
                              size: ScreenUtil().setSp(15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // Post Content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            hasImage
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(ScreenUtil().setSp(8)),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: postImage != null
                          ? Image.asset(postImage!, fit: BoxFit.cover)
                          : const Placeholder(),
                    ),
                  )
                : SizedBox(height: ScreenUtil().setHeight(1)),

            SizedBox(height: ScreenUtil().setHeight(8)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: FB_DARK_PRIMARY,
                      size: ScreenUtil().setSp(18),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(4)),
                    CustomText(
                      text: numOfLikes.toString(),
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mode_comment_outlined,
                      color: FB_DARK_PRIMARY,
                      size: ScreenUtil().setSp(18),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(4)),
                    CustomText(
                      text: 'Comment',
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.redo,
                      color: FB_DARK_PRIMARY,
                      size: ScreenUtil().setSp(18),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(4)),
                    CustomText(
                      text: 'Share',
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,
                    ),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(12),
                  backgroundImage:
                      const AssetImage('assets/images/BlindSided.jpg'),
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Container(
                  padding: EdgeInsets.fromLTRB(ScreenUtil().setSp(10), 0, 0, 0),
                  alignment: Alignment.centerLeft,
                  height: ScreenUtil().setHeight(25),
                  width: ScreenUtil().setWidth(330),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(ScreenUtil().setSp(10)),
                    ),
                  ),
                  child: CustomText(
                    text: 'Write a comment...',
                    fontSize: ScreenUtil().setSp(11),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            CustomText(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
