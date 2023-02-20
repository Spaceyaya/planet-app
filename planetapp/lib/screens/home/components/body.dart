import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:planetapp/consts.dart';
import 'package:planetapp/screens/home/components/headerWithSearchBox.dart';
import 'package:planetapp/screens/home/components/titleWithMoreBtn.dart';

import 'featured_plants.dart';
import 'recomended_plant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'Recomended',
            press: () {},
          ),
          RecomededPlant(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
