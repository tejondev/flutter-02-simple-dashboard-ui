import 'package:flutter/material.dart';
import 'package:simple_dashboard/config/theme/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.width,
    required this.height,
    required this.image,
    required this.title,
    required this.color,
  });

  final double width;
  final double height;
  final String image;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: width * 0.05),
      child: Container(
        height: height,
        width: width * 0.4,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(1.5, 3),
            )
          ],
          image: const DecorationImage(
              image: AssetImage("assets/img/mountain.png"),
              fit: BoxFit.fill,
              opacity: 0.2),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.6),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.02, vertical: height * 0.15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  width: width * 0.15,
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.02),
                  child: Text(
                    title,
                    style: kTitleStyle(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
