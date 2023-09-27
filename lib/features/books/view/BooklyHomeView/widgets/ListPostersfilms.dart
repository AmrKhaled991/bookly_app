import 'package:bookly/core/Appassets.dart';
import 'package:flutter/material.dart';


class ListPostersfilms extends StatelessWidget {
  const ListPostersfilms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery
        .of(context)
        .size;
    return Container(
      height: media.height * .2,
      padding: EdgeInsets.only(left: 30,),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Image.asset(AssetsData.ktestposter
                , fit:BoxFit.fill,),
            ),
        itemCount: 6,

      ),
    );
  }
}
