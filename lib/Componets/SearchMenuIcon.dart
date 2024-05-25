import 'package:flutter/material.dart';
class SearchMenuIcon extends StatelessWidget {
  const SearchMenuIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Image.asset(
            "assets/menu.png",
          ),
        ),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}