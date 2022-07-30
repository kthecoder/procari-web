import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:procari_web/core/routes/router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final MyRouter _myRouter = MyRouter();

    return MaterialApp.router(
      builder: (BuildContext context, Widget? widget) =>
          ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        defaultScale: true,
        breakpoints: <ResponsiveBreakpoint>[
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
        backgroundColor: const Color.fromRGBO(20, 21, 24, 1),
      ),

      // These delegates make sure that the localization data for the proper language is loaded
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'SkyRose',
      onGenerateTitle: (BuildContext context) {
        return 'SkyRose';
      },
      theme: ThemeData(fontFamily: 'ArminaSemiBold'),
      routerDelegate: _myRouter.delegate(),
      routeInformationParser: _myRouter.defaultRouteParser(),
    );
  }
}
