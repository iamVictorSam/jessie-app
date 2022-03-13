import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/Screens/data_sub/model/model.dart';
import 'package:jessiepay/Presentation/widgets/border_box.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';

import '../../../helpers/constants.dart';

class InternetSubBody extends StatefulWidget {
  const InternetSubBody({Key? key}) : super(key: key);

  @override
  State<InternetSubBody> createState() => _InternetSubBodyState();
}

class _InternetSubBodyState extends State<InternetSubBody> {
  final List<IconData> iconList = [
    Icons.gif_box_rounded,
    Icons.ac_unit_outlined,
  ];
  bool isOpen = false;
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
                  'Internet Subscription',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Select Provider'),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ...List.generate(
                            iconList.length,
                            (index) => BorderBox(
                                  widget: Icon(iconList[index]),
                                ))
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                          )),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          // flex: 2,
                          child: Row(
                            children: [
                              Checkbox(
                                  value: isOpen,
                                  onChanged: (value) {
                                    setState(() {
                                      isOpen = !isOpen;
                                      value = isOpen;
                                    });
                                  }),
                              Text(
                                'Save as beneficiary',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.person),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                'Select beneficiary',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                          )),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select Data Volume',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'View all plans',
                          style: TextStyle(color: Colors.grey, fontSize: 10.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: double.maxFinite,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              dataPlan.length,
                              (index) => Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child: BorderBox(
                                  widget: Column(
                                    children: [
                                      Text(
                                        '₦${dataPlan[index].amount}',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5.0),
                                        child: Text(
                                          '${dataPlan[index].data}',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '${dataPlan[index].duration}',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: FractionallySizedBox(
                        heightFactor: 0.7.h,
                      ),
                    ),
                    DefaultButton(text: 'Pay', press: () {}),
                    Flexible(
                      child: FractionallySizedBox(
                        heightFactor: 0.3.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
