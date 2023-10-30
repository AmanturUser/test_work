import 'package:flutter/material.dart';

Widget searchField() {
  return Container(
    width: 335,
    height: 37,
    decoration: BoxDecoration(
      border: Border.all(
        width: 0.5,
        color: Color(0xFFA9B5C1),
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(0xFF225196),
              size: 19,
            )),
        Container(
          width: 300,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Color(0xFF225196),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Color(0xFF677482).withOpacity(0.5),
              ),
              hintText: 'Search',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
  );
}
