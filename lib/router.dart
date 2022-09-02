import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/screens/homePage.dart';
import 'package:quiz_app/screens/result.dart';

final router = GoRouter(routes: [
  GoRoute(
    name: "home",
    path: "/",
    pageBuilder: (context, state) => MaterialPage(child: HomePage()),
  ),
  GoRoute(
    name: "resultPage",
    path: "/home/resultPage",
    pageBuilder: (context, state) => MaterialPage(child: ResultPage()),
  )
]);
