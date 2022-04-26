import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/product_card.dart';
import 'package:shamo/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Halo, Victor',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    '@victorchndra',
                    style: subtitleTextStyle,
                  )
                ],
              ),
            ),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(shape: BoxShape.circle, color: primaryColor),
              child: Image.asset(
                'assets/image_profile.png',
                width: 54,
                height: 54,
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          // agar bisa di scroll
          scrollDirection: Axis.horizontal, //arah scroll ke kanan
          child: Row(
            children: [
              SizedBox(width: defaultMargin), //pakai sizedbox biar klo digeser, ruangnya ngga terbatas
              Container(
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 13,
                  ),
                ),
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
              ),
              Container(
                child: Text(
                  'Running',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 13,
                  ),
                ),
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtitleTextColor, width: 0.5),
                  color: Colors.transparent,
                ),
              ),
              Container(
                child: Text(
                  'Training',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 13,
                  ),
                ),
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtitleTextColor, width: 0.5),
                  color: Colors.transparent,
                ),
              ),
              Container(
                child: Text(
                  'Basketball',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 13,
                  ),
                ),
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtitleTextColor, width: 0.5),
                  color: Colors.transparent,
                ),
              ),
              Container(
                child: Text(
                  'Hiking',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 13,
                  ),
                ),
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtitleTextColor, width: 0.5),
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget popularProduct() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: defaultMargin),
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),
            ],
          ),
        ),
      );
    }

    Widget newProductTitle() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 22,
          ),
        ),
      );
    }

    Widget newProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductTitle(),
        popularProduct(),
        newProductTitle(),
        newProducts(),
      ],
    );
  }
}
