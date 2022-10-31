// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module_3',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Module_3 Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> myList = [SvgPicture.network('https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/acid.svg',),
    SvgPicture.asset('assets/images/apple-01.svg',
    )];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            ///Подключите пакет https://pub.dev/packages/flutter_svg из pub.dev.
            ///Добавьте в assets svg изображение и выведите его с помощью
            ///этого виджета. С помощью виджета загрузите изображение из сети
            ///и отобразите это изображение на экране.
            Stack(alignment: Alignment.topLeft,
            children: <Widget>[
              SvgPicture.network('https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/acid.svg',
              height: 180,
              ),
              const Text("Task 1"),
            ],),

            Stack(alignment: Alignment.topLeft,
              children: <Widget>[
              SvgPicture.asset('assets/images/apple-01.svg', height: 200, ),
                const Text("Task 2"),
              ],
            ),

            ///Подключите пакет из git-репозитория. Следуя инструкциям по
            ///установке этого пакета, отобразите виджет carousel slider на
            ///экране. https://github.com/serenader2014/flutter_carousel_slider
            Stack(alignment: Alignment.topCenter,
              children: <Widget>[
                CarouselSlider(
                    items: myList,
                    options: CarouselOptions(height: 200)),
                const Text("Task 3"),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
