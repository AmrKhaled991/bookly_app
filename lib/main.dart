import 'package:bookly/constant.dart';
import 'package:bookly/core/Navigetion_reouter.dart';
import 'package:bookly/core/get_itLocator.dart';
import 'package:bookly/core/simpleBlockObserve.dart';
import 'package:bookly/features/books/block_models/booksk_bloc.dart';
import 'package:bookly/features/books/data/reopsatory/authreposatry.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  setup();
   Bloc.observer= SimpleBlockObserver();
   runApp(DevicePreview(
      enabled: true,
      builder: (context) =>  const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context) => BookskBloc(repo: getIt.get<authreposatry>()))
      ],
      child: MaterialApp.router(
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: Builder(
            builder: (context) {
              return MaxWidthBox(
                maxWidth: 1200,
                background: Container(color: const Color(0xFFF5F5F5)),
                child: ResponsiveScaledBox(
                  width: ResponsiveValue<double>(context, conditionalValues: [
                    Condition.equals(name: MOBILE, value: 450),
                    Condition.between(start: 800, end: 1100, value: 800),
                    Condition.between(start: 1000, end: 1200, value: 1000),
                    // There are no conditions for width over 1200
                    // because the `maxWidth` is set to 1200 via the MaxWidthBox.
                  ]).value,
                  child: BouncingScrollWrapper.builder(
                      context,child!,
                      dragWithMouse: true),
                ),
              );
      }),
        breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        ),
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimarycolor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationParser: AppRouter.router.routeInformationParser,
      ),
    );
  }
}
