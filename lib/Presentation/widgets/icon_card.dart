import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.name,
    required this.icon,
    required this.widget,
  }) : super(key: key);

  final String name;
  final IconData icon;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(widget);
      },
      child: Container(
        // height: 120.h,
        width: 120.h,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(7)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
