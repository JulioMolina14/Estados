import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mprovider/page/pagina1_page.dart';
import 'package:mprovider/page/parigna2_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pagina1',
      /* routes: {
        'pagina1': (context) => Pagina1(),
        'pagina2': (context) => Pagina2(),
      }, */
      getPages: [
        GetPage(name: '/pagina1', page: () => Pagina1()),
        GetPage(name: '/pagina2', page: () => Pagina2())
      ],
    );
  }
}
