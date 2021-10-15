import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: getAppRoutes(),
      onGenerateRoute: ( setting ) {

        print('Ruta llamada ${setting.name}');

        return MaterialPageRoute(
          builder: (context) => const AlertPage()
        );
      },
    );
  }
}
