import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/widgets/border_box.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';
import 'package:selectable_container/selectable_container.dart';

import '../../helpers/constants.dart';

enum GcardType {
  card,
  code,
}

class SellGiftcard extends StatefulWidget {
  SellGiftcard({Key? key}) : super(key: key);

  @override
  State<SellGiftcard> createState() => _SellGiftcardState();
}

class _SellGiftcardState extends State<SellGiftcard> {
  bool pCard = true;
  String? dropValue;
  bool code = false;
  List<DropdownMenuItem<String>> get menuItems {
    List<DropdownMenuItem<String>> dropItem = [
      DropdownMenuItem(
        child: Text('BITCOIN'),
        value: 'btc',
      ),
      DropdownMenuItem(
        child: Text('etc'),
        value: 'etc',
      ),
      DropdownMenuItem(
        child: Text('nan'),
        value: 'nan',
      ),
    ];

    return dropItem;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
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
                  'Sell Giftcard',
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
            child: Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: Container(
                padding: EdgeInsets.only(top: 30.h),
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(),
                            CircleAvatar(),
                          ],
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Text('Select Country'),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          width: double.infinity,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(
                                  4,
                                  (index) => Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: BorderBox(
                                      widget: Column(
                                        children: [
                                          CircleAvatar(),
                                          Text('data')
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 25.h),
                        Text('Select Giftcard Type'),
                        SizedBox(height: 25.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SelectableContainer(
                                selected: pCard,
                                onValueChanged: (value) {
                                  setState(() {
                                    pCard = value;
                                    if (pCard == true) {
                                      code = false;
                                    } else {
                                      code = true;
                                    }
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        'Physical Card',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      Text(
                                        '\$10 - \$10,000',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                )),
                            SelectableContainer(
                                selected: code,
                                onValueChanged: (value) {
                                  setState(() {
                                    code = value;
                                    if (code == true) {
                                      pCard = false;
                                    } else {
                                      pCard = true;
                                    }
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        'Physical Card',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      Text(
                                        '\$10 - \$10,000',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.info_outline,
                                color: kPrimaryColor,
                                size: 18,
                              ),
                            ),
                            Text(
                              'Learn more about card types',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Card value',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                            value: dropValue,
                            hint: Text('Select Giftcard Value'),
                            items: menuItems,
                            onChanged: (String? value) {
                              setState(() {
                                dropValue = value!;
                              });
                              print(dropValue);
                            }),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            maxLines: 2,
                            decoration: InputDecoration(
                                hintText: 'Card value info',
                                filled: true,
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        DefaultButton(text: 'Proceed', press: () {}),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
