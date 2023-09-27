import 'package:bookly/core/Appassets.dart';
import 'package:bookly/features/books/data/models/listbook.dart';
import 'package:bookly/features/books/view/BooklyHomeView/widgets/ImageNetwark_custom.dart';
import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/Styles.dart';

class best_saler_item extends StatelessWidget {
   best_saler_item(this.item, {Key? key}) : super(key: key);
       Items item;
  @override
  Widget build(BuildContext context) {
  var media = MediaQuery.of(context).size;
  return Padding(
    padding: const EdgeInsets.only(bottom:20),
    child: Row(
    children: [
    ImageNetwark_custom(
    imageUrl: item.volumeInfo!.imageLinks!.thumbnail??'',
    ),
    SizedBox(
    width: 30,
    ),
    Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(
    width: media.width * .57,
    child: Text(
      item.volumeInfo!.title??'',
    style: Styles.kfontwigth20
        .copyWith(fontFamily: kfont1, fontWeight: FontWeight.w400),
maxLines: 2,
overflow: TextOverflow.clip,
),
),
Padding(
padding: const EdgeInsets.symmetric(horizontal: 3),
child: Text(item.volumeInfo!.authors.toString(),
style: Styles.kfontwight14,
),
),
Row(
children: [
Text(
'0.0€',
style: Styles.kfontwigth20,
),
Spacer(),
Icon(Icons.star_rounded,weight: 13,color: Colors.amberAccent,),
SizedBox(width: 6.3,),
Text('${item.volumeInfo!.averageRating}',style: Styles.kfontwight16),
SizedBox(width: 5,),
Text('(${item.volumeInfo!.ratingsCount})',style: Styles.kfontwight14),
],
)
],
),
)
],
),
);
  }
}
