import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';

class SelectGiftCardBody extends StatefulWidget {
  const SelectGiftCardBody({Key? key}) : super(key: key);

  @override
  State<SelectGiftCardBody> createState() => _SelectGiftCardBodyState();
}

class _SelectGiftCardBodyState extends State<SelectGiftCardBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: kPrimaryColor,
                  ),
                ),
                Spacer(),
                Text(
                  'Select Giftcard',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                      fontSize: 18.sp),
                ),
                Spacer(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(top: 30.h),
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Select Giftcard',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          label: Text('Search Giftcards'),
                          fillColor: Color.fromARGB(255, 206, 206, 206),
                          contentPadding: EdgeInsets.all(8),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 206, 206, 206)),
                          )),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      children: [],
                      shrinkWrap: true,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
