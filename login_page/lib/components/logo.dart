import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      height: media.height * 0.40,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/lovemaryhuana.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: media.height * 0.40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.6),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 115,
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                "My Weed",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
