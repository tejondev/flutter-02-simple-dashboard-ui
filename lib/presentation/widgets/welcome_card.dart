import 'package:flutter/material.dart';

import '../../config/theme/colors.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.15,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(1.5, 3),
          )
        ],
        image: const DecorationImage(
          image: AssetImage('assets/img/mountain.png'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            kPrimaryColor.withOpacity(0.8),
            kSecondaryColor.withOpacity(0.8)
          ]),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.03,
                vertical: height * 0.02,
              ),
              child: SizedBox(
                width: width * 0.4,
                child: ListTile(
                  title: Text(
                    'Welcome back',
                    style: kTitleStyle(),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(right: width * 0.03),
              child: SizedBox(
                height: height * 0.15,
                width: width * 0.3,
                child: Image.asset("assets/img/sakura.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
