import 'package:flutter/material.dart';

import '../Theme/colors.dart';
class SeeAllWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const SeeAllWidget({
    super.key, required this.title, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 23,
              color: AppColor.textColor),
        ),
        Row(
          children: [
            Text(
              "See all",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: AppColor.textColor),
            ),
            InkWell(
              onTap: onPressed,
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
            )
          ],
        ),
      ],
    );
  }
}
