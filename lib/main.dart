import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String labelText = 'Это приложение в флаттер';
  bool isCatImageDisplayed = false;

  void toggleLabelText() {
    setState(() {
      isCatImageDisplayed = !isCatImageDisplayed;
      labelText = isCatImageDisplayed ? 'Это котик' : 'Это приложение в флаттер';
    });
  }

  void openGitHub() {
    // Открываем страницу с GitHub проекта
  }

  void openStepik() {
    // Открываем страницу Stepik
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              labelText,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: openGitHub,
              child: Text('GitHub'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: openStepik,
              child: Text('Stepik'),
            ),
            Expanded(
              child: GestureDetector(
                onTap: toggleLabelText,
                child: Container(
                  margin: EdgeInsets.only(bottom: 42.0),
                  child: Image.network(
                    'https://masterpiecer-images.s3.yandex.net/578a963b594a11ee927d363fac71b015:upscaled',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
