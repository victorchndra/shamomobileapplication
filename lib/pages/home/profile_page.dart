import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: primaryColor),
                  child: Image.asset(
                    'assets/image_profile.png',
                    width: 45,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo, Victor',
                        style: primaryTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '@victorchndra',
                        style: secondaryTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/button_exit.png',
                    width: 20,
                    height: 20,
                  ),
                  color: primaryColor,
                  onPressed: () {
                    // Navigator.pushNamed(context, '/sign-in');
                    Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
                  },
                  tooltip: 'Logout',
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget menuItem(String _text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _text,
              style: secondaryTextStyle,
            ),
            Icon(
              Icons.chevron_right,
              color: secondaryTextColor,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Akun',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
              GestureDetector(
                child: menuItem('Ubah profil'),
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
              ),
              menuItem('Pesanan anda'),
              menuItem('Bantuan'),
              SizedBox(height: 20),
              Text(
                'Umum',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
              menuItem('Keamanan akun'),
              menuItem('Layanan aplikasi'),
              menuItem('Beri penilaian'),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
