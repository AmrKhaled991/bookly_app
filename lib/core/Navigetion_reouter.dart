import 'package:bookly/features/books/data/models/listbook.dart';
import 'package:go_router/go_router.dart';

import '../features/Splash_screen/Splash_screen.dart';
import '../features/books/view/BooklyHomeView/BooklyHomeView.dart';
import '../features/books/view/BuyBook/BuyBookScreen.dart';

abstract class AppRouter {
    static const String kBooklyHomeView='/kBooklyHomeView';
    static const String kBuyBookScreen='/kBuyBookScreen';
  static GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => Splash_screen(),
        ),
        GoRoute(
          path:kBooklyHomeView ,
          builder: (context, state) => BooklyHomeView(),
        ),
        GoRoute(
          path:kBuyBookScreen ,
          builder: (context, state) => BuyBookScreen(state.extra as Items),
        )
    ]);


}