import 'package:bookly/core/Appassets.dart';
import 'package:bookly/core/Styles.dart';
import 'package:bookly/features/books/data/models/listbook.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../BooklyHomeView/widgets/Bookdata.dart';
import '../BooklyHomeView/widgets/ListPostersfilms.dart';

class BuyBookScreen extends StatelessWidget {
   BuyBookScreen(this.items,{Key? key}) : super(key: key);
  Items items;
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
         slivers: [SliverFillRemaining(
           hasScrollBody: false,
           child: Column(
             children: [
               SizedBox(
                 height: 40.2,
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 30),
                 child: Row(
                   children: [
                     IconButton(onPressed: () {
                       context.pop();
                       }, icon: Icon(Icons.close)),
                     Spacer(),
                     Image.asset(AssetsData.kiccart)
                   ],
                 ),
               ),
               SizedBox(
                 height: 36,
               ),
               Bookdata(items),
               SizedBox(
                 height: 50,
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 30 ,),
                 child: Align(
                     alignment: Alignment.centerLeft,
                     child: Text(
                       'You can also like',
                       style: Styles.kfontwight14.copyWith(color: Colors.white),
                     )),
               ),
               SizedBox(
                 height: 16,
               ),
               ListPostersfilms(),
             ],
           ),
         ),],
      ),
    );
  }
}

