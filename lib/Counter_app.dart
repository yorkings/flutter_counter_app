import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter app"),
        backgroundColor: Colors.pink[600],
      ),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
             Text("your count is :"),
             Text(_counter.toString(),
             style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w400,
              color: Colors.blue[900]
             ),
             ),
        
            Container(
              child: ElevatedButton(onPressed: _increment, child: Text("increment!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15
              ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9)
                )
              ),
              ),
              margin: EdgeInsets.symmetric(vertical: 10),
            ),

            Container(
              child: ElevatedButton(onPressed: _decrement, 
              child: Text("decreement!",
               style: TextStyle(
                color: Colors.white,
                fontSize: 15
              ),
              
              ),
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9)
                )
              ),
              ),
            )
          ],
        ),
      )
      
      
    );
  }
}
