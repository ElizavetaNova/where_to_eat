import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Choose lunch'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Choose lunch',
                style: TextStyle(color: Colors.teal[900],
                    fontSize: 35),
              ),
            ),

            Text(
              'Это приложение предназначенно для облегчения ваших душевных мук, а именно оно поможет выбрать место для вашего обеда',
              textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
              style: TextStyle(color: Colors.cyan[900],
              fontSize: 16),
                softWrap: true
            ),
            SizedBox(height: 30),
            Wrap(
                spacing: 20, // to apply margin in the main axis of the wrap
                runSpacing: 20, // to apply margin in the cross axis of the wrap
                children: <Widget>[
                  Text('Как это должно работать:',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.pink[900],
                          fontSize: 25),
                      softWrap: true
                  ),
                  const Text('1. Приложение по вашему местоположению определяет ближайшие заведения.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.purple,
                          fontSize: 16),
                      softWrap: true
                  ),
                  const Text('2. Места можно отсортировать по рейтингу, который оставляют пользователи посетившие данное заведение.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.purple,
                          fontSize: 16),
                      softWrap: true
                  ),
                  const Text('3. Вы включаете рандом или выбираете заведение сами.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.purple,
                          fontSize: 16),
                      softWrap: true
                  ),
                  const Text('4. Вы направляетесь в выбранное заведение, вкусно кушаете и ставите ему рейтинг.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.purple,
                          fontSize: 16),
                      softWrap: true
                  ),
                  Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/images/gitHub.png", width: 40, height: 40),
                      //InkWell(
                        //child: Text(
                          //  'Ссылка на репозиторий'
                        //),
                       const SelectableText('https://github.com/ElizavetaNova/where_to_eat.git',
                              cursorColor: Colors.red,
                              showCursor: true,
                              toolbarOptions: ToolbarOptions(
                                  copy: true,
                                  selectAll: true,
                                  cut: false,
                                  paste: false
                              ),
                      ),
                    ],
                  )
                ],
            ),
          ],
        ),
      ),
    );
  }
}
