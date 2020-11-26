import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Center(child: PlayButton()),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  List random = [
    Colors.red,Colors.green[400],Colors.yellow[400],Colors.orange[900],Colors.blue,Colors.purple
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Row(
          children: [
            AvatarGlow(
              startDelay: Duration(milliseconds: 0),
              glowColor: random[index],
              endRadius: 50,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: MaterialButton(
                onPressed: () {
                  print("GO");
                },
                elevation: 20.0,
                shape: CircleBorder(),
              ),
            ),
            AvatarGlow(
              startDelay: Duration(milliseconds: 0),
              glowColor: random[index],
              endRadius: 50,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: MaterialButton(
                onPressed: () {
                  print("GO");
                },
                elevation: 20.0,
                shape: CircleBorder(),
              ),
            ),
            AvatarGlow(
              startDelay: Duration(milliseconds: 0),
              glowColor: random[index],
              endRadius: 50,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: MaterialButton(
                onPressed: () {
                  print("GO");
                },
                elevation: 20.0,
                shape: CircleBorder(),
              ),
            ),
            AvatarGlow(
              startDelay: Duration(milliseconds: 0),
              glowColor: random[index],
              endRadius: 50,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: MaterialButton(
                onPressed: () {
                  print("GO");
                },
                elevation: 20.0,
                shape: CircleBorder(),
              ),
            ),
          ],
        );
      },
    );
  }
}
