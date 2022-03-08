import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  final String name;
  final IconData icon;
  // final

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: 110.h,
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
    );
  }
}
