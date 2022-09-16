import 'package:flutter/material.dart';
import 'package:plantappui/screens/home/components/RecomendPlantCard.dart';
import 'package:plantappui/screens/home/components/header_with_seachbox.dart';
import 'package:plantappui/screens/home/components/title_with_more_bbtn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List _image = [
      'assets/images/bottom_img_1.png',
      'assets/images/bottom_img_2.png',
      'assets/images/bottom_img_1.png',
      'assets/images/bottom_img_2.png',
    ];
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        HeaderWithSerchBox(size: size),
        TitleWithMoreBtn(
          title: 'Recomended',
          press: () {},
        ),
        RecomendPlantCard(),
        TitleWithMoreBtn(
          title: 'Featured plants',
          press: () {},
        ),
        SizedBox(
          height: 200,
          child: GridView.builder(
            itemCount: _image.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 155/250
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Image.asset(
                  _image[index],
                  fit: BoxFit.fill,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
