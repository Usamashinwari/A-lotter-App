import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('lotteryApp'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: Text('lottery winning number is 4 ')),
            Container(
              height: x == 4 ? 600 : 250,
              width: x == 4 ? 300 : 300,
              decoration: BoxDecoration(
                  color: x == 4 ? Colors.orange : Colors.black26,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 5
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.done,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Congrats You Have The Lottery \n Your Number Is x',
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Better Luck Next Time \n Your Number is X  \n Try Again',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            print(x);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
