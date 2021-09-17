import 'package:flutter/material.dart';

//importaciones mias
import 'package:componentes_practica/src/providers/menu_provider.dart';
import 'package:componentes_practica/src/utils/icon_string_util.dart';
import 'package:componentes_practica/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    /*
      * ! Este Es un opcion pero no es la mejor por que pude hacer que la aplicaición se vea congelada
     print(menuProvider.opciones);
     menuProvider.cargarData().then((opciones) {
      print('_lits');
      print(opciones);
    });
    return ListView(
      children: _listaitems(),
    ); */

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaitems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaitems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgtetemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          // *? Este es otro metodo par navegar entre paginas
          /* final route = MaterialPageRoute(builder: (context) => AlertPage());
          Navigator.push(context, route); */
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add(widgtetemp)..add(Divider());
    });
    return opciones;
  }
}
