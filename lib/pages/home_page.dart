import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: LayoutBuilder(
            builder: (context, snapshot) => Text('logged in!'),
          ),
        ),
      ),
    );
  }
}
