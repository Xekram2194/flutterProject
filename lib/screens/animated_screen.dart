import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration:
              BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
          duration: const Duration(seconds: 1),
          curve: Curves.easeOutCubic,
        ),
        // child: Container(
        //   width: _width,
        //   height: _height,
        //   decoration:
        //       BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.play_circle_outline,
          size: 35,
        ),
        onPressed: () {
          setState(() {
            final random = Random();
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            //generate color
            _color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            );
            _borderRadiusGeometry =
                BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
      ),
    );
  }
}
