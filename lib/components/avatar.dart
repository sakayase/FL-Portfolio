import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 220,
    //   width: 220,
    //   child: Image.asset('avatar_placeholder.png'),

    // );
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: ClipOval(
        child: Container(
          height: 220,
          width: 220,
          color: Colors.blue,
          child: Image.asset('avatar_placeholder.png'),
        ),
      ),
    );
  }
}
