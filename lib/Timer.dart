import 'package:quiver/async.dart';
import 'package:flutter/material.dart';

class Timerr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TimerState();
  }
}

//////////////////////////////////////////////////////////////////
class TimerState extends State<Timerr> {
  Duration start = new Duration(days: 10000, hours: 23, minutes: 1, seconds: 5);
  // int _start = 10;
  int rDay = 0;
  int rHour = 0;
  int rMin = 0;
  int rSec = 0;
  ///////////////////////
  var _current = new Duration(
    days: DateTime.now().day,
    hours: DateTime.now().hour,
    seconds: DateTime.now().second,
    minutes: DateTime.now().minute,
  );
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    CountdownTimer countDownTimer = new CountdownTimer(
      start,
      new Duration(seconds: 1),
    );

    var sub = countDownTimer.listen(null);
    sub.onData((duration) {
      setState(() {
        _current = start - duration.elapsed;
      });
    });
    sub.onDone(() {
      print("Done");
      sub.cancel();
    });
  }

  Widget build(BuildContext context) {
    rSec = _current.inSeconds.remainder(60);
    rMin = _current.inMinutes.remainder(60);
    rHour = _current.inHours.remainder(24);
    rDay = _current.inDays.remainder(365);
    _current.inDays;

    timeBox(time) {
      return Padding(
          padding: EdgeInsets.only(right: 4, left: 4),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.black87),
            width: 35,
            height: 35,
            // color: Colors.black26,
            child: Center(
              child: Text(
                time,
                style: TextStyle(
                    color: Colors.white, fontSize: 25, fontFamily: "digital"),
              ),
            ),
          ));
    }

    return new Container(
      color: Colors.grey[200],
      height: 65,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                timeBox(
                  "$rHour",
                ),
                Text(
                  ":",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                timeBox("$rMin"),
                Text(
                  ":",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                timeBox("$rSec"),
              ],
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "پیشنهاد "),
                  TextSpan(
                      text: " شگفت انگیز", style: TextStyle(color: Colors.red)),
                ],
                style: TextStyle(
                    color: Colors.black, fontFamily: "AGhasem", fontSize: 21),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
