import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tlc_app_2/pages/home_page.dart';
import 'package:tlc_app_2/values/app_assets.dart';
import 'package:tlc_app_2/values/app_colors.dart';
import 'package:tlc_app_2/values/app_styles.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome to',
                  style: AppStyles.h3,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'English',
                        style: AppStyles.h2.copyWith(
                            color: AppColors.blackGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Text(
                          'Quotes"',
                          textAlign: TextAlign.right,
                          style: AppStyles.h4.copyWith(height: 0.5),
                        ),
                      )
                    ]),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 64),
                child: RawMaterialButton(
                  shape: CircleBorder(),
                  fillColor: AppColors.lightBlue,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => HomePage()),
                        (route) => false);
                  },
                  child: Image.asset(AppAssets.rightArrow),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
