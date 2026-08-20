import 'package:flutter/material.dart';
class GetxColorOpacityExample extends StatefulWidget {
  const GetxColorOpacityExample({super.key});

  @override
  State<GetxColorOpacityExample> createState() => _GetxColorOpacityExampleState();
}
 double opacity = .4;
class _GetxColorOpacityExampleState extends State<GetxColorOpacityExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Color Opacity'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        height: 150,
        width: 150,
        color: Colors.red.withValues(alpha: opacity),
      ),
    );
  }
}
