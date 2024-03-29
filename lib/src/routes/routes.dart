import 'package:flutter/material.dart';

//Importaciones propias
import 'package:componentes_practica/src/pages/alert_page.dart';
import 'package:componentes_practica/src/pages/avatar_page.dart';
import 'package:componentes_practica/src/pages/home_page.dart';
import 'package:componentes_practica/src/pages/card_page.dart';
import 'package:componentes_practica/src/pages/animated_container.dart';
import 'package:componentes_practica/src/pages/input_page.dart';
import 'package:componentes_practica/src/pages/slider_page.dart';
import 'package:componentes_practica/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage()
  };
}
