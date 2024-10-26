import 'package:flutter/material.dart';

class Mystatefulwidget extends StatefulWidget {
  const Mystatefulwidget({super.key});

  @override
  State<Mystatefulwidget> createState() => _MystatefulwidgetState();
}

class _MystatefulwidgetState extends State<Mystatefulwidget> {
  var _jumlahhitungan = 0;
  void _tambahangka() {
    setState(() {
      _jumlahhitungan--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "$_jumlahhitungan",
      home: Scaffold(
        body: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$_jumlahhitungan"),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  onPressed: () {
                    _tambahangka();
                  },
                  child: Text("tekan tombol ini")),
            ],
          ),
        ),
      ),
    );
  }
}
