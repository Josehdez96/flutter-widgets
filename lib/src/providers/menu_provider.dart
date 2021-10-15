import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_widgets/src/models/menu_opts.dart';

class _MenuProvider {
  List<Ruta> options = [];

  _MenuProvider() {
    loadData();
  }

  Future<List<Ruta>> loadData() async {
    final data = await rootBundle.loadString('assets/menu_opts.json');
    final menuOpts = MenuOptions.fromJson(data);
    options = menuOpts.rutas;
    return options;
  }
}

final menuProvider = _MenuProvider();