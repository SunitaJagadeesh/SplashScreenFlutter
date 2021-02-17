import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: HomeScreen(),
      backgroundColor: Colors.amberAccent,
      title: new Text('Brr Softwares',style: TextStyle(fontSize: 50),),
      image: new Image.asset('assets/brrlogo.jpg'),
      loadingText: Text('loading'),
      photoSize: 150.0,
      loaderColor: Colors.blueAccent,
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Brr Softwares'),),
      body: Center(
        child: Text('Welocome to Brr Softwares Pvt Ltd'),
      ),
    );
  }
}


