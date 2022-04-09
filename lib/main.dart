import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                        'https://akcdn.detik.net.id/visual/2018/01/08/c35f94d7-385c-4628-a3b7-845ec359a2cf_169.jpeg?w=650'),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.pause_rounded,
                            color: Colors.white,
                          ),
                          Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: 2,
                                color: Colors.grey[400],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height: 2,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const Text(
                            '01:05:52',
                            style: TextStyle(color: Colors.white),
                          ),
                          const Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 20,
                          ),
                          const Icon(
                            Icons.fullscreen_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
