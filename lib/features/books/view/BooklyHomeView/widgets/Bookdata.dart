import 'package:bookly/constant.dart';
import 'package:bookly/core/Appassets.dart';
import 'package:bookly/core/Styles.dart';
import 'package:bookly/features/books/data/models/listbook.dart';
import 'package:bookly/features/books/view/BooklyHomeView/widgets/ImageNetwark_custom.dart';
import 'package:flutter/material.dart';


class Bookdata extends StatelessWidget {
   Bookdata(this.item,{Key? key}) : super(key: key);
 Items item;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
            width: 162,
            height: 243,
            child: ImageNetwark_custom(
              imageUrl: item.volumeInfo!.imageLinks?.thumbnail??'',
            )),
        SizedBox(
          height: 43,
        ),
        Text(
          item.volumeInfo!.title??'',
          style:
              Styles.kfontwight14.copyWith(fontSize: 30, fontFamily: 'Schyler'),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          item.volumeInfo!.title??"",
          style: Styles.kfontwight18
              .copyWith(color: Colors.white70, fontWeight: FontWeight.w400),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            Icon(
              Icons.star_rounded,
              weight: 13,
              color: Colors.amberAccent,
            ),
            SizedBox(
              width: 6.3,
            ),
            Text(item.volumeInfo!.ratingsCount.toString()??" ", style: Styles.kfontwight16),
            SizedBox(
              width: 5,
            ),
            Text('(${item.volumeInfo!.averageRating.toString()})', style: Styles.kfontwight14),
          ],
        ),
        SizedBox(
          height: 37,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 48,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  '19.99€',
                  style: Styles.kfontwight18.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25)))),
              ),
            ),
            SizedBox(
              width: 150,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Free Preview',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: korange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25)))),
              ),
            )
          ],
        )
      ],
    );
  }
}
