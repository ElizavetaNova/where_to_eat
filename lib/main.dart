
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<String> viewKitchens = [
  "Китайская",
  "Итальянская",
  "Русская",
  "Грузинская"
];
List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> typesCuisines = [
    DropdownMenuItem(child: Text("Китайская"), value: "chinese"),
    DropdownMenuItem(child: Text("Итальянская"), value: "italian"),
    DropdownMenuItem(child: Text("Русская"), value: "russian"),
    DropdownMenuItem(child: Text("Грузинская"), value: "georgian"),
  ];
  return typesCuisines;
}

class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xffbfe886, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xfff1f8e9), //10%
      100: const Color(0xffbfe886), //20%
      200: const Color(0xff9fcb4b), //30%
      300: const Color(0xff7caf41), //40%
      400: const Color(0xff699d2d), //50%
      500: const Color(0xff4a8d1e), //60%
      600: const Color(0xff396c17), //70%
      700: const Color(0xff2b5211), //80%
      800: const Color(0xff1c340b), //90%
      900: const Color(0xff132307), //100%
    },
  );
  static const MaterialColor buttonShades = const MaterialColor(
    0xffbfe886, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      100: const Color(0xffd0a3ee), //20%
      200: const Color(0xffa3a7ee), //30%
      300: const Color(0xffa3eeb8), //40%
      400: const Color(0xffeed642), //50%
    },
  );
}

class CardRestaurant {
  String? name;
  String? address;
  //Image? photo;
  String? kitchen;
  int? rating;
  CardRestaurant(String nameRes, addressRes,
      /*Image photoRes,*/ String kitchenRes, int ratingRes) {
    name = nameRes;
    address = addressRes;
    //photo = photoRes;
    kitchen = kitchenRes;
    rating = ratingRes;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
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
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Palette.kToDark.shade200,
      minimumSize: Size(350.0, 50.0),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(200)),
      ));
  String nameFont = 'Comforta';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
            style: TextStyle(
              color: Palette.kToDark.shade700,
              fontFamily: nameFont,
              fontWeight: FontWeight.w500,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Hello!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Palette.kToDark.shade700,
                    fontSize: 50,
                    fontFamily: nameFont,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChooseRestaurant()))
              },
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black87,
                  primary: Palette.buttonShades.shade300,
                  minimumSize: Size(350, 50),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(200)),
                  )),
              //style: raisedButtonStyle,
              child: Text(
                'Выбрать заведение',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Palette.kToDark.shade800,
                  fontSize: 27,
                  fontStyle: FontStyle.normal,
                  fontFamily: nameFont,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateCardRestaurant()))
              },
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black87,
                  primary: Palette.buttonShades.shade200,
                  minimumSize: Size(350, 50),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(200)),
                  )),
              child: Text(
                'Создать карточку',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Palette.kToDark.shade800,
                  fontSize: 27,
                  fontStyle: FontStyle.normal,
                  fontFamily: nameFont,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black87,
                  primary: Palette.buttonShades.shade100,
                  minimumSize: Size(350, 50),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(200)),
                  )),
              child: Text(
                'Оценить заведение',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Palette.kToDark.shade800,
                  fontSize: 27,
                  fontStyle: FontStyle.normal,
                  fontFamily: nameFont,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChooseRestaurant extends StatefulWidget {
  ChooseRestaurant({Key? key}) : super(key: key);
  @override
  _ChooseRestaurantState createState() => _ChooseRestaurantState();
}

CardRestaurant rest1 = CardRestaurant('Rococo', 'суворова 3', 'chinese', 3);
CardRestaurant rest2 = CardRestaurant('CO-co', 'суворова 3', 'chinese', 3);
List<CardRestaurant> listRestaurant = [rest1, rest2];

class _ChooseRestaurantState extends State<ChooseRestaurant> {
  String nameFont = 'Comforta';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Выбор заведения')),
        body: Stack(
            children: <Widget>[ Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, position) {
                  return Card(
                    child: Text(
                      listRestaurant[position].name.toString(),
                      style: TextStyle(
                        color: Palette.kToDark.shade800,
                        fontSize: 27,
                        fontStyle: FontStyle.normal,
                        fontFamily: nameFont,
                      ),
                    ),
                  );
                },
                itemCount: listRestaurant.length,
              )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text('Случайный выбор', style: TextStyle(fontSize: 24)),
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                            onPrimary: Colors.black87,
                            primary: Palette.buttonShades.shade100,
                            minimumSize: Size(350, 50),
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(200)),
                            )),
                        //color: Colors.green,
                        //textColor: Colors.white,
                      ),
                    ),
                  ),

            ])]));
  }
}

class CreateCardRestaurant extends StatefulWidget {
  CreateCardRestaurant({Key? key}) : super(key: key);
  @override
  _CreateCardRestaurantState createState() => _CreateCardRestaurantState();
}

class _CreateCardRestaurantState extends State<CreateCardRestaurant> {
  int value = 0;
  final _formKey = GlobalKey<FormState>();
  String nameFont = 'Comforta';
  String selectedValue = "chinese";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Создание карточки нового ресторана')),
        body: Center(
            child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 6.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Название',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Palette.kToDark.shade800,
                        fontSize: 23,
                        fontStyle: FontStyle.normal,
                        fontFamily: nameFont,
                      ),
                    ),
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          width: 300,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            style: TextStyle(
                              color: Palette.kToDark.shade800,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontFamily: nameFont,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 6.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Адрес',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Palette.kToDark.shade800,
                        fontSize: 23,
                        fontStyle: FontStyle.normal,
                        fontFamily: nameFont,
                      ),
                    ),
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          width: 300,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            style: TextStyle(
                              color: Palette.kToDark.shade800,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontFamily: nameFont,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 6.0),
                child: Row(children: <Widget>[
                  Text(
                    'Кухня',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Palette.kToDark.shade800,
                      fontSize: 23,
                      fontStyle: FontStyle.normal,
                      fontFamily: nameFont,
                    ),
                  ),
                  Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          width: 300,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: DropdownButton(
                            style: TextStyle(
                              color: Palette.kToDark.shade800,
                              fontSize: 23,
                              fontStyle: FontStyle.normal,
                              fontFamily: nameFont,
                            ),
                            value: selectedValue,
                            items: dropdownItems,
                            onChanged: (Object? value) {},
                          ))),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Создать',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Palette.kToDark.shade800,
                        fontSize: 23,
                        fontStyle: FontStyle.normal,
                        fontFamily: nameFont,
                      )),
                ),
              ),
            ],
          ),
        )));
  }
}
