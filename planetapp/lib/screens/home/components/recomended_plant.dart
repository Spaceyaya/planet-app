import 'package:flutter/material.dart';
import 'package:planetapp/screens/details/details_screen.dart';

import '../../../consts.dart';

class RecomededPlant extends StatelessWidget {
  const RecomededPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedPlanetCard(
            img: 'assets/images/image_1.png',
            title: 'samantha',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
            price: 440,
            country: 'russia',
          ),
          RecomendedPlanetCard(
            img: 'assets/images/image_2.png',
            title: 'samantha',
            press: () {
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
            price: 440,
            country: 'russia',
          ),
          RecomendedPlanetCard(
            img: 'assets/images/image_3.png',
            title: 'samantha',
            press: () {
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
            price: 440,
            country: 'russia',
          ),
        ],
      ),
    );
  }
}

class RecomendedPlanetCard extends StatelessWidget {
  const RecomendedPlanetCard({
    Key? key,
    required this.img,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);
  final String img, title, country;
  final int price;
  final VoidCallback press;

  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(img),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xff0c9869).withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '$title\n'.toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: '$country'.toUpperCase(),
                          style: TextStyle(
                            color: Color(0xff0c9869).withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
