import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planetapp/consts.dart';

import 'Icons_and_image.dart';
import 'icon_card.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          IconsAndImage(size: size),
          const TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: '440',
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: kTextColor, fontSize: 15),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Description',
                      style: TextStyle(fontSize: 15, color: kTextColor),
                    )),
              ),
              SizedBox(
                height: kDefaultPadding * 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);
  final String title, country;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: '$country',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: kPrimaryColor,
                ),
          ),
        ],
      ),
    );
  }
}
