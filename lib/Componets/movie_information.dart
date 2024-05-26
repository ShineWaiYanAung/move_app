import 'package:flutter/material.dart';
class MovieInformation extends StatelessWidget {
  final String data;
  final IconData iconData;
  const MovieInformation({
    super.key, required this.data, required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
         data,
          style: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        const SizedBox(width: 9,),
        Icon(iconData,color: Colors.blue.withOpacity(0.7),size: 20,)
      ],
    );
  }
}