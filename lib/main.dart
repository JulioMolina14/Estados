import 'package:flutter/material.dart';
import 'package:mprovider/page/pagina1_page.dart';
import 'package:mprovider/page/parigna2_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pagina1',
      routes: {
        'pagina1': (context) => Pagina1(),
        'pagina2': (context) => Pagina2()
      },
    );
  }
}
