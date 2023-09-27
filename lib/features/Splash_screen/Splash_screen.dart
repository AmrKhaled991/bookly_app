import 'dart:async';

import 'package:bookly/core/Appassets.dart';
import 'package:bookly/core/Navigetion_reouter.dart';
import 'package:bookly/core/Styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splash_screen extends StatelessWidget {
  const Splash_screen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),() {
      context.go(AppRouter.kBooklyHomeView);
    },);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
              color: Colors.red,
              child: Image.asset(AssetsData.klogo,)),
            SizedBox(height: 6,),
            Text('BOOK BOOK',style: Styles.kfontwight14,)
          ],
        ),
      ),
    );
  }
}
