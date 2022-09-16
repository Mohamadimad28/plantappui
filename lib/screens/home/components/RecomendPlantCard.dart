import 'package:flutter/material.dart';
import 'package:plantappui/constants.dart';
import 'package:plantappui/model/recomended.dart';
import 'package:plantappui/screens/details/details_screen.dart';

class RecomendPlantCard extends StatefulWidget {
  RecomendPlantCard({
    Key? key,
  }) : super(key: key);

  @override
  State<RecomendPlantCard> createState() => _RecomendPlantCardState();
}

class _RecomendPlantCardState extends State<RecomendPlantCard> {
  @override
  Widget build(BuildContext context) {
    final List<Recomened> _recomened = <Recomened>[
      Recomened(
        title: 'Samantha',
        country: 'Russia',
        price: 405,
        image: 'assets/images/image_1.png',
        press: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details_screen(),
            ),
          );
        },
      ),
      Recomened(
          title: 'Angelica',
          country: 'Russia',
          price: 505,
          image: 'assets/images/image_2.png',
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Details_screen(),
              ),
            );
          }),
      Recomened(
          title: 'Samantha',
          country: 'Russia',
          price: 650,
          image: 'assets/images/image_3.png',
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Details_screen(),
              ),
            );
          }),
      Recomened(
          title: 'Angelica',
          country: 'Russia',
          price: 750,
          image: 'assets/images/image_1.png',
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Details_screen(),
              ),
            );
          }),
    ];
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: _recomened.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                left: kDefaultPabbing,
                top: kDefaultPabbing / 2,
                bottom: kDefaultPabbing * 2.5,
              ),
              width: size.width * 0.4,
              child: Column(
                children: [
                  InkWell(
                    child: Image.asset(_recomened[index].image),
                    onTap: _recomened[index].press,
                  ),
                  Container(
                    width: size.width * 0.4,
                    padding: EdgeInsets.all(kDefaultPabbing / 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.23)),
                      ],
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${_recomened[index].title}\n'
                                    .toUpperCase(),
                                style: Theme.of(context).textTheme.button,
                              ),
                              TextSpan(
                                text: _recomened[index].country.toUpperCase(),
                                style: TextStyle(
                                    color: kPrimaryColor.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        // TextButton(
                        //   onPressed: _recomened[index].press,
                        //   child: Text(
                        //     '\$${_recomened[index].price}',
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .button!
                        //         .copyWith(color: kPrimaryColor),
                        //   ),
                        // ),
                        Text(
                          '\$${_recomened[index].price}',
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
/** Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Container(
    child: Stack(
    children: [
    Container(
    height: 250,
    width: 150,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    ),
    ),
    Container(
    height: 180,
    width: 150,
    color: Colors.transparent,
    child: Image.asset(
    'assets/images/image_1.png',
    fit: BoxFit.cover,
    ),
    ),
    Positioned(
    top: 175,
    bottom: 0,
    left: 0,
    child: Container(
    width: 150,
    padding: EdgeInsets.all(kDefaultPabbing / 2),
    decoration: BoxDecoration(
    color: Colors.white,
    boxShadow: [
    BoxShadow(
    offset: Offset(0, 10),
    blurRadius: 50,
    color: kPrimaryColor.withOpacity(0.23)),
    ],
    // borderRadius: BorderRadius.only(
    //   bottomRight: Radius.circular(10),
    //   bottomLeft: Radius.circular(10),
    // ),
    ),
    child: Row(
    children: [
    RichText(
    text: TextSpan(
    children: [
    TextSpan(
    text: 'Samantha\n'.toUpperCase(),
    style: Theme.of(context).textTheme.button,
    ),
    TextSpan(
    text: 'Russia'.toUpperCase(),
    style: TextStyle(
    color: kPrimaryColor.withOpacity(0.5)),
    ),
    ],
    ),
    ),
    Spacer(),
    Text(
    '\$400',
    style: Theme.of(context)
    .textTheme
    .button!
    .copyWith(color: kPrimaryColor),
    ),
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    )*/
