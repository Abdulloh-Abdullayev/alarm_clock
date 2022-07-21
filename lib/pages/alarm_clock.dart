import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Alarm Clock"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ZoomIn(
              child: SizedBox(
                child: Image(
                  image: AssetImage("assets/images/img.png"),fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          FlutterAlarmClock.createAlarm(23, 12, title: "Uyg'oning Oka!");
        },
        child: Icon(Icons.alarm),
      ),
    );
  }
}
