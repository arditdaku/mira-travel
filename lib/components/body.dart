import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              "assets/images/home_bg.png",
              height: getScreenHeight(315),
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getScreenHeight(80),
                ),
                Text(
                  "Travelers",
                  style: TextStyle(
                    fontSize: getScreenHeight(73),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Travel Community App",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: getScreenWidth(-15),
              child: searchField(),
            ),
          ],
        ),
      ],
    );
  }

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
                onChanged: (value){

                },
                decoration: InputDecoration(
                  hintText: "Search your destination",
                  hintStyle: TextStyle(
                      fontSize: getScreenWidth(12),
                      color: const Color(0xFF464A7E)),
                  suffixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: getScreenWidth(kDefaultPadding),
                  vertical: getScreenHeight(kDefaultPadding/2)
                  ),
                ),
              ),
            );
  }
}
