import 'package:flutter/material.dart';
import 'package:jessiepay/Presentation/helpers/app_styles.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:jessiepay/Presentation/helpers/size_configs.dart';

class OnBoardNavBtn extends StatelessWidget {
  const OnBoardNavBtn({
    Key? key,
    required this.name,
    this.color = kPrimaryColor,
    required this.onPressed,
  }) : super(key: key);
  final String name;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          name,
          style: TextStyle(
            color: color,
            fontSize: SizeConfig.blockSizeH! * 4.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
