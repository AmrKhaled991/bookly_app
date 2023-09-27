import 'package:bookly/features/books/block_models/booksk_bloc.dart';
import 'package:bookly/features/books/view/BooklyHomeView/widgets/ImageNetwark_custom.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Customlistbooks extends StatefulWidget {
  const Customlistbooks({Key? key}) : super(key: key);

  @override
  State<Customlistbooks> createState() => _CustomlistbooksState();
}

class _CustomlistbooksState extends State<Customlistbooks> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    var media = MediaQuery
        .of(context)
        .size;

    return Container(
      height: media.height * .3,
      child: BlocBuilder<BookskBloc, BookskState>(
        builder: (context, state) {
          if (state is BookskISucsees) {
            return ListView.builder(padding: EdgeInsets.only(left: 24),
              itemBuilder: (context, index) =>
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                            child: ImageNetwark_custom(imageUrl:state.res.items![index].volumeInfo!.imageLinks!.thumbnail??'',))
                    ),
                  ),itemCount: state.res.items!.length,
              scrollDirection: Axis.horizontal,
            );
          } else if(state is BookskIerror)return Text(state.error.message);
          return Center(child:
          CircularProgressIndicator
          (
          )
          ,
          ); // return ListView.builder(

        },
      ),
    );
  }
}
