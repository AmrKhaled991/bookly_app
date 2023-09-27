import 'package:bookly/core/Navigetion_reouter.dart';
import 'package:bookly/features/books/block_models/booksk_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'best_saler_item.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return BlocBuilder<BookskBloc, BookskState>(
      builder: (context, state) {

        if(state is BookskISucsees)return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: 30, right: 42),
          itemBuilder: (context, index) =>
              InkWell(
                  onTap: () => context.push(AppRouter.kBuyBookScreen,extra:state.res.items?[index] ),
                  child: best_saler_item(state.res.items![index])),
          itemCount: 7,
        );
        else if (state is BookskIerror)return Text(state.error.message);
        return Center(child: CircularProgressIndicator(),);

      },
    );
  }
}

