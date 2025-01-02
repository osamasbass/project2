import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
          backgroundColor: Colors.blue,
          actions: [
            Icon(Icons.info),
            SizedBox(width: 10),
            Icon(Icons.more_vert),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // الحاوية العلوية
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.blue,
              height: 70,
              child: Center(
                child: Text(
                  'I am container',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            // نص مائل باستخدام Transform
            Transform.rotate(
              angle: -0.2,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Hai, I am Slanting',
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                ),
              ),
            ),

            // نص آخر مائل مع حواف مشطوفة
            Transform.rotate(
              angle: 0.2,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'I am also Slanting,but see my edges',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),

            // حاويات متداخلة ملونة
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.yellow,
                  child: Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
