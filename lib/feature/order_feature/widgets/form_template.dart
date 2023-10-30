import 'package:flutter/material.dart';

Widget FormFieldTemplate(IconData icon,String formName) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '$formName*',
        style: TextStyle(
            color: Color(0xFF323F4B),
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
      SizedBox(height: 10),
      Container(
        width: 335,
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Color(0xFFA9B5C1),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SizedBox(
              width:44,
              height: 44,
              child: Icon(
                icon,
                color: Color(0xFF677482),
                size: 20,
              ),
            ),
            Expanded(
              child: Container(
                child: TextField(
                  style: TextStyle(
                    color: Color(0xFF225196),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Color(0xFF677482).withOpacity(0.5),
                    ),
                    hintText: formName,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
    ],
  );
}
