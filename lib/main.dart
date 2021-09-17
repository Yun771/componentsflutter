import 'package:flutter/material.dart';

//Estos son importados por mi
// import 'src/pages/home_temp.dart';
import 'package:componentes_practica/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', 'ES')
      ],
      title: 'Material App',
      // home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      //*! Este es el Widget que permite redirigir a una ruta si la ruta enviada esta no esta definida
      /* onGenerateRoute: (RouteSettings settings) {
        print('ruta llamda: ${settings.name}');

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      }, */
    );
  }
}
