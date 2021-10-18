import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/pages/avatar_page.dart';
import 'package:flutter_widgets/src/pages/card_page.dart';
import 'package:flutter_widgets/src/pages/home_page.dart';
import 'package:flutter_widgets/src/pages/slider_page.dart';


Map<String, WidgetBuilder> getAppRoutes() {
  return {
    '/': ( context ) => const HomePage(),
    'alert': ( context ) => const AlertPage(),
    'avatar': ( context ) => const AvatarPage(),
    'card': ( context ) => const CardPage(),
    'list': ( context ) => const SliderPage()
  };
}