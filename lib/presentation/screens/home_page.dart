import 'package:flutter/material.dart';

import '../../config/theme/colors.dart';
import '../widgets/custom_container.dart';
import '../widgets/welcome_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: myAppBar(),
      body: const HomeView(),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: kGreenColor,
        ),
        onPressed: () {},
      ),
      title: Text(
        'Dashboard',
        style: kTitleGreenStyle(),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: kGreenColor,
          ),
          onPressed: () {},
        ),
        const CircleAvatar(
          radius: 20,
          backgroundColor: kBlueColor,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late double width = MediaQuery.of(context).size.width;
    late double height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.07, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WelcomeCard(height: height, width: width),
              CardsContainer(width: width, height: height)
            ],
          )),
    );
  }
}

class CardsContainer extends StatelessWidget {
  const CardsContainer({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CustomContainer(
              width: width,
              height: height * 0.27,
              image: "assets/img/sakura.png",
              title: "Sakura",
              color: kBlueColor,
            ),
            CustomContainer(
              width: width,
              height: height * 0.22,
              image: "assets/img/sakura.png",
              title: "Sakura",
              color: kGreenColor,
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            CustomContainer(
              width: width,
              height: height * 0.22,
              image: "assets/img/sakura.png",
              title: "Sakura",
              color: kPurpleColor,
            ),
            CustomContainer(
              width: width,
              height: height * 0.27,
              image: "assets/img/sakura.png",
              title: "Sakura",
              color: kRedColor,
            ),
          ],
        )
      ],
    );
  }
}
