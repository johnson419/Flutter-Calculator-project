import 'package:flutter/material.dart';


class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Messages'),
          centerTitle: true,
        ),
        body: Column(
          children: [
          
            Expanded(
              flex: 2,
                child: GridView.builder(
              itemCount: 100,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(8.0),
                color: Colors.redAccent,
                child: const Text('Messages'),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
