import 'package:bookly/core/Appassets.dart';
import 'package:flutter/material.dart';


class  Custembar extends StatelessWidget {
  const  Custembar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(AssetsData.klogo),
          Image.asset(AssetsData.ksearch),
        ],
      ),
    );
  }
}
