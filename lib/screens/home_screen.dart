import "package:flutter/material.dart";
import 'package:travel_app/components/body.dart';
import '../../size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const IconButton(
        icon: Icon(Icons.menu),
        onPressed: null,
      ),
      actions: [
        IconButton(
          icon: ClipOval(
            child: ClipOval(child: Image.asset("assets/images/profile.png")),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
