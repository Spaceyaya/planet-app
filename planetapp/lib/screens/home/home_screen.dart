import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planetapp/consts.dart';
import 'package:planetapp/screens/home/components/body.dart';

import 'components/my_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Body(),
      bottomNavigationBar:const MyBottomBar(),
    );
  }

  AppBar  BuildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      ),
    );
  }
}
