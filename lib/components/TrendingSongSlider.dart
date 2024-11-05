import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/Config/Colors.dart';

class Trendingsongslider extends StatelessWidget {
  const Trendingsongslider({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> sliderItem = [
      Container(
        height: 230,
        decoration: BoxDecoration(
          image: const DecorationImage(image: AssetImage("assets/images/musicconcept.jpg"),
          fit: BoxFit.cover,
          ),
          color: divColor,
          borderRadius: BorderRadius.circular(30),
        ),
        color: primaryColor,
        child: Row(
          children: [
            Expanded(
              child: Column(children: [
               Row(
                 children: [
                   Container(
                     decoration: BoxDecoration(
                       color: divColor,
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: Row(
                       children: [
                         SvgPicture.asset("assets/icons/trandingsong.jpg"),
                          SizedBox(width: 10),
                         Text("Trending",
                         style: Theme.of(context).textTheme.labelSmall,
                         ),

                       ],
                     ),
                   ),
                 ],
               ),
                Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("LAE DOOBA", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sunidhi Chauhan",style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: labelColor,
                    ),),
                  ],
                )
              ],),
            ),
          ],
        ),
      )
    ];
    return CarouselSlider(
      items: sliderItem,
      options: CarouselOptions(
        height: 320,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 6),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        onPageChanged: (index,value){},
        scrollDirection: Axis.horizontal,

      ),

    );
  }
}
