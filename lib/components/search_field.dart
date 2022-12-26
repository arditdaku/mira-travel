import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/size_config.dart';

Container searchField() {
  return Container(
    width: getScreenHeight(313),
    height: getScreenWidth(50),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: const Color(0xFF3E4067),
        ),
        boxShadow: [kDefaultShadow]),
    child: TextField(
      onChanged: (value) {

      },
      decoration: InputDecoration(
        hintText: "Search your destination",
        hintStyle: TextStyle(
            fontSize: getScreenWidth(12),
            color: const Color(0xFF464A7E)),
        suffixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.symmetric(
            horizontal: getScreenWidth(kDefaultPadding),
            vertical: getScreenHeight(kDefaultPadding / 2)
        ),
      ),
    ),
  );
}