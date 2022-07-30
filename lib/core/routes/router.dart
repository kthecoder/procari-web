import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:procari_web/presentation/home.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(
      path: '/',
      page: HomePage,
      initial: true,
      //TODO Make this the initial
    ),
  ],
)
class MyRouter extends _$MyRouter {}

//=========================================================================//

// Custom Transitions

//=========================================================================//

Widget easeTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  const Offset begin = Offset(1.0, 0.0);
  const Offset end = Offset.zero;
  const Cubic curve = Curves.fastOutSlowIn;

  final Tween<Offset> tween = Tween<Offset>(begin: begin, end: end);
  final CurvedAnimation curvedAnimation = CurvedAnimation(
    parent: animation,
    curve: curve,
  );

  return SlideTransition(
    position: tween.animate(curvedAnimation),
    child: child,
  );
}
