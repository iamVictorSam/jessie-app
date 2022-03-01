// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),

          ListTile(
              leading: CircleAvatar(),
              title: Text(
                'Hello, Chief',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              )),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'My wallet',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),

          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/IMG-6150.JPG'), fit: BoxFit.fill),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'N * * * *',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w900),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'Shortcuts',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          // Expanded(child: GridView(gridDelegate: ))
          Expanded(
              child: GridView.count(
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15,
                  padding: EdgeInsets.all(1),
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  children: List.generate(choices.length, (index) {
                    return Center(
                      child: SelectCard(choice: choices[index]),
                    );
                  })))
        ],
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.image});
  final String title;
  final AssetImage image;
}

const List<Choice> choices = const <Choice>[
  Choice(title: 'Home', image: AssetImage('assets/4.png')),
  Choice(title: 'Contact', image: AssetImage('assets/5.png')),
  Choice(title: 'Map', image: AssetImage('assets/6.png')),
  Choice(title: 'Phone', image: AssetImage('assets/7.png'))
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(color: Colors.white);
    return SizedBox(
      // height: 200,
      // width: 50,
      child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: choice.image, fit: BoxFit.fitHeight),
            ),
          )),
    );
  }
}
