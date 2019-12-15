import 'package:flutter/material.dart';
import 'package:awesome_ui_button/awesome_ui_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  bool disabled = false;
  ButtonSize size = ButtonSize.NORMAL;
  InteractMode mode = InteractMode.OPACITY;
  String text = "Sample text before";
  Color bgColor = Colors.redAccent;
  Color textColor = Colors.white;
  double textSize;
  EdgeInsets padding;
  Color disabledColor;
  double borderRadius;
  double activeOpacity;

  void doDelayed() async {
    await Future.delayed(Duration(seconds: 5));
    this.setState(() {
//      counter = 1;
//        disabled = true;
//      size = ButtonSize.NORMAL;
//      mode = InteractMode.OPACITY;
//      text = "Sample text after";
//      bgColor = Colors.deepPurpleAccent;
//      textColor = Colors.black;
//        padding = EdgeInsets.all(16);
        borderRadius = 16;
        activeOpacity = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (counter == 0) {
      doDelayed();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AwesomeButton(
                key: Key("SOME KEY"),
                text: text,
                size: size,
                backgroundColor: bgColor,
                interactMode: mode,
                disabled: disabled,
                textColor: textColor,
                fontSize: textSize,
                padding: padding,
                disabledColor: disabledColor,
                borderRadius: borderRadius,
                activeOpacity: activeOpacity,
                onTapUp: (_) {
                  print("Tap up");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
