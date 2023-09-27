import 'package:bookly/core/Styles.dart';
import 'package:bookly/features/books/block_models/booksk_bloc.dart';
import 'package:bookly/features/books/view/BooklyHomeView/widgets/CustomListview.dart';
import 'package:bookly/features/books/view/BooklyHomeView/widgets/Customlistbooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/custembar.dart';


class BooklyHomeView extends StatefulWidget {
  const BooklyHomeView({Key? key}) : super(key: key);

  @override
  State<BooklyHomeView> createState() => _BooklyHomeViewState();
}

class _BooklyHomeViewState extends State<BooklyHomeView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<BookskBloc>(context).add(freebooksEvent());
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Custembar(),
                SizedBox(
                  height: 25.9,
                ),
                Customlistbooks(),
                SizedBox(
                  height: 25.9,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Best Saler',
                        style: Styles.kfontwight18,
                      )),
                ),
                SizedBox(height: 20),
              ],
          ),
            ),
            SliverFillRemaining(
              child: CustomListview(),
            )
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

