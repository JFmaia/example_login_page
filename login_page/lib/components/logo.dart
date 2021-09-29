import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 170,
          width: 170,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(90),
          ),
        ),
        Positioned(
          right: 2,
          bottom: 2,
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(80),
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ],
    );
  }
}
