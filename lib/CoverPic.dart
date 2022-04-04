import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';

class CoverPic extends StatelessWidget {
  const CoverPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClayContainer(
          height: 120,
          width: 450,
          child: Image.asset("Assets/Sky.jpg",fit: BoxFit.cover),
        ),
            ],
    );
  }
}
