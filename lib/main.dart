import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch Party',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Gio\'s Watch Party'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              MediaPlayer(),
              SizedBox(height: 15),
              LiveStatus(),
              SizedBox(height: 15),
              LiveChatStatus(),
            ],
          ),
        ));
  }
}

class LiveChatStatus extends StatelessWidget {
  const LiveChatStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1.8,
          color: Colors.grey[200],
        ),
        const SizedBox(height: 13),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ViewerThumbnail(
              height: 30,
              width: 60,
            ),
            const Text(
              'OPEN LIVE CHAT',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: const Border(
                  top: BorderSide(color: Colors.grey),
                  bottom: BorderSide(color: Colors.grey),
                  left: BorderSide(color: Colors.grey),
                  right: BorderSide(color: Colors.grey),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                '402',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 13),
        Container(
          height: 1.8,
          color: Colors.grey[200],
        ),
      ],
    );
  }
}

class LiveStatus extends StatelessWidget {
  const LiveStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.wifi,
                color: Colors.red,
              ),
              SizedBox(width: 10),
              Text(
                'LIVE',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Row(
          children: const [
            ViewerThumbnail(),
            SizedBox(width: 10),
            Text(
              '+420 watching',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}

class ViewerThumbnail extends StatelessWidget {
  final double? width;
  final double? height;

  const ViewerThumbnail({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 85,
      height: height ?? 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: ((context, index) => Align(
              widthFactor: height == null ? 0.7 : 0.5,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: height == null ? 15 : 13,
                  backgroundImage: const NetworkImage(
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                ),
              ),
            )),
      ),
    );
  }
}

class MediaPlayer extends StatelessWidget {
  const MediaPlayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
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
    );
  }
}
