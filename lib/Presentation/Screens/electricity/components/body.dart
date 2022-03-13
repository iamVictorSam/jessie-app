import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/widgets/border_box.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';
import 'package:selectable_container/selectable_container.dart';

import '../../../helpers/constants.dart';
import '../model/model.dart';

class ElectricityBody extends StatefulWidget {
  const ElectricityBody({Key? key}) : super(key: key);

  @override
  State<ElectricityBody> createState() => _ElectricityBodyState();
}

class _ElectricityBodyState extends State<ElectricityBody> {
  final List<IconData> iconList = [
    Icons.gif_box_rounded,
    Icons.ac_unit_outlined,
    Icons.confirmation_num_outlined,
    Icons.report_gmailerrorred_outlined
  ];
  bool isOpen = false;
  bool _selected = false;
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Select Provider',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                              iconList.length,
                              (index) => BorderBox(
                                    widget: Icon(iconList[index]),
                                  ))
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        'Select Meter Type',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SelectableContainer(
                              selected: _selected,
                              onValueChanged: (newValue) {
                                setState(() {
                                  _selected = newValue;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25.w, vertical: 10.h),
                                child: Text('Prepaid'),
                              )),
                          SelectableContainer(
                              selected: _selected,
                              onValueChanged: (newValue) {
                                setState(() {
                                  _selected = newValue;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25.w, vertical: 10.h),
                                child: Text('Prepaid'),
                              )),
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
                            'Select Amount',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'View all plans',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 10.sp),
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
                                amount.length,
                                (index) => Padding(
                                  padding: EdgeInsets.only(right: 10.w),
                                  child: BorderBox(
                                    widget: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5.0),
                                          child: Text(
                                            '${amount[index].amount}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
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
                        height: 20,
                      ),
                      // Flexible(
                      //   child: FractionallySizedBox(
                      //     heightFactor: 0.7.h,
                      //   ),
                      // ),
                      DefaultButton(text: 'Pay', press: () {}),
                      SizedBox(
                        height: 20,
                      ),
                      // Flexible(
                      //   child: FractionallySizedBox(
                      //     heightFactor: 0.3.h,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
