import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: attendance(),
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
  ));
}

class attendance extends StatelessWidget {
  var name = [
    'JAN',
    'FEB',
    'MAR',
    'APR',
    'MAY',
    'JUN',
    'JUL',
    'AUG',
    'SEP',
    'OCT',
    'NOV',
    'DEC'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ATTENDANCE HISTORY'),
          backgroundColor: Colors.lightBlue,
        ),

        body: GridView.count(
            crossAxisCount: 6,childAspectRatio: 1.2,crossAxisSpacing: 5.0,
            children: List.generate(12, (index) {
              return Card(elevation: 2,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      name[index],style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0),
                    )
                  ],
                ),
              );
            })));
  }
}
