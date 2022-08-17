import 'package:flutter/material.dart';


class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          centerTitle: true,
        ),
        body: Column(
          children: [
           
            Expanded(
              flex: 3,
                child: GridView.builder(
              itemCount: 100,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(8.0),
                color: Colors.blueGrey,
                child: const Text('notifications'),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
