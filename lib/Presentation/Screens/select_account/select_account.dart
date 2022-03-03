import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';
import 'package:selectable_container/selectable_container.dart';

class SelectAccount extends StatelessWidget {
  const SelectAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
        ),
        child: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const SelectAccountBody(),
    ));
  }
}

class SelectAccountBody extends StatefulWidget {
  const SelectAccountBody({Key? key}) : super(key: key);

  @override
  _SelectAccountBodyState createState() => _SelectAccountBodyState();
}

class _SelectAccountBodyState extends State<SelectAccountBody> {
  final TextStyle _titleStyle = TextStyle(color: Colors.black.withOpacity(0.3));
  bool _selected = false;
  TextStyle _labelStyle() => TextStyle(
      color: Colors.grey, fontSize: 12.sp, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: M,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Center(
            child: Container(
          height: 40.h,
          decoration: BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(image: AssetImage('assets/logo.jpeg'))),
        )),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Text(
            'You are about to make a P2P Deposit into your JessiePay Account, Please select the Account that you would be transferring from. Kindly note that for faster confirmation you are advised to make your deposit only from the account you selected below, As deposits from the third party accounts would be delayed or returned',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.h, color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Text('Select Account', style: _titleStyle),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: SelectableContainer(
            selected: _selected,
            onValueChanged: (newValue) {
              setState(() {
                _selected = newValue;
              });
            },
            child: ListTile(
              leading: CircleAvatar(),
              title: Text('Access Bank'),
              subtitle: Text('076235426'),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Text('Amount', style: _titleStyle),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: TextField(
            decoration: InputDecoration(
              label: Text('Input Amount', style: _labelStyle()),
              border: outlineInputBorder(),
              enabledBorder: outlineInputBorder(),
              focusedBorder: outlineInputBorder(),
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: DefaultButton(text: 'Continue', press: () {}),
        )
      ],
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
    );
  }
}
