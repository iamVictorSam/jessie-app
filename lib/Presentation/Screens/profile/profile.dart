import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        title: Text('Account', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
      ),
      body: ProfileBody(),
    );
  }
}

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  TextStyle _titleStyle =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
                child: Text(
              'Hi Chief',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
            )),
            SizedBox(
              height: 25.h,
            ),
            ColorContainer(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'View Profile',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                  ColorContainer(
                    child: ListTile(
                      leading: CircleAvatar(),
                      title: Text(
                        'Limit',
                        style: _titleStyle,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward_ios_rounded),
                        iconSize: 16.h,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Account',
              style: _titleStyle,
            ),
            SizedBox(
              height: 15.h,
            ),
            ColorContainer(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Account Details',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Limit',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Preferences',
              style: _titleStyle,
            ),
            SizedBox(
              height: 15.h,
            ),
            ColorContainer(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Email Notification',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Push Notification',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Security',
              style: _titleStyle,
            ),
            SizedBox(
              height: 15.h,
            ),
            ColorContainer(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Reset Password',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Transaction Pin',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Manage Biometrics',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      '2FA Notification',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Delete Account',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Resources',
              style: _titleStyle,
            ),
            SizedBox(
              height: 15.h,
            ),
            ColorContainer(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Blog',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Help Center',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Terms of Service',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Privacy Policy',
                      style: _titleStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                      iconSize: 16.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            ColorContainer(
              child: ListTile(
                leading: CircleAvatar(),
                title: Text(
                  'Logout',
                  style: _titleStyle,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: () {},
                  iconSize: 16.h,
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            // Center(child: Text('JESSIE')),
            Center(
              child: Image.asset(
                'assets/logo2.jpeg',
                height: 80,
                width: 120,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.copyright_outlined),
                SizedBox(
                  width: 10,
                ),
                Text('2022'),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...List.generate(
                    5,
                    (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: CircleAvatar(),
                        ))
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
          ],
        ),
      ),
    );
  }
}

class ColorContainer extends StatelessWidget {
  const ColorContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: child,
    );
  }
}
