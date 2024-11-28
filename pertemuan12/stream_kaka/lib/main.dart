import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2241720175 - Mochammad Zakaro Al Fajri',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;
  late StreamTransformer transformer;
  late StreamSubscription subsciption;
  late StreamSubscription subsciption2;
  String values = '';

  @override
  void initState() {
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream.asBroadcastStream();
    subsciption = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
    });

    subsciption2 = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
    });

    super.initState();
  }

  @override 
  void dispose(){
    numberStreamController.close();
    subsciption.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title: const Text('2241720175 - Mochammad Zakaro Al Fajri'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(values),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: const Text('New Random Number'),
            ),
          ],
        ),
      )
    );
  }

  void changeColor() async {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  void addRandomNumber(){
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!numberStreamController.isClosed){
      numberStream.addNumberToSink(myNum);
    }else{
      setState(() {
        lastNumber = -1;
      });
    }
  }

  void stopStream(){
    numberStreamController.close();
  }
}

