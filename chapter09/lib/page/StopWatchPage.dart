import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchPage extends StatefulWidget {
  @override
  _StopWatchPageState createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  Timer _timer;
  var _time = 0;
  var _isRunning = false;
  var _lapTimes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StopWatch'),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _clickButton();
          });
        },
        child: _isRunning ? Icon(Icons.pause) : Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBody() {
    var sec = _time ~/ 100; // 초
    var hundredth = '${_time % 100}'.padLeft(2, '');

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('$sec', style: TextStyle(fontSize: 50)),
                    Text('$hundredth')
                  ],
                ),
                Container(
                  width: 100,
                  height: 200,
                  child: ListView(
                    reverse: true,
                    children: _lapTimes.map((e) => Text(e)).toList(),
                  ),
                ),
              ],
            ),
            Positioned(
                left: 10,
                bottom: 10,
                child: FloatingActionButton(
                  backgroundColor: Colors.deepOrange,
                  onPressed: _reset,
                  child: Icon(Icons.rotate_left),
                )),
            Positioned(
                right: 10,
                bottom: 10,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _recordLapTime('$sec.$hundredth');
                      });
                    },
                    child: Text('랩타임')))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _clickButton() {
    _isRunning = !_isRunning;
    if (_isRunning) {
      _start();
    } else {
      _pause();
    }
  }

  void _start() {
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        _time++;
      });
    });
  }

  void _pause() {
    _timer?.cancel();
  }

  void _reset() {
    setState(() {
      _isRunning = false;
      _timer?.cancel();
      _lapTimes.clear();
      _time = 0;
    });
  }

  void _recordLapTime(String time) {
    _lapTimes.insert(0, '${_lapTimes.length + 1}등 $time');
  }
}