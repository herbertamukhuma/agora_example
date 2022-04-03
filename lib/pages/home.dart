import 'package:agora_example/pages/director.dart';
import 'package:agora_example/pages/participant.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _channelName = TextEditingController();
  final _userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/streamer.png"),
            const SizedBox(height: 5),
            const Text("Multi Streaming with Friends"),
            const SizedBox(height: 40),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextField(
                controller: _userName,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    hintText: "Username"),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextField(
                controller: _channelName,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    hintText: "Channel Name"),
              ),
            ),
            TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Participant",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.live_tv),
                ],
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Participant(
                      channelName: _channelName.text,
                      userName: _userName.text,
                    ),
                  ),
                );
              },
            ),
            TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Director",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.cut),
                ],
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Director(
                      channelName: _channelName.text,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
