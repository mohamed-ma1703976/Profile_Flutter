import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 115,
          width: 115,
          child:Stack(
            fit:StackFit.expand,
            children: [
              ClayContainer(
                borderRadius: 30,
                child: CircleAvatar(backgroundImage: AssetImage("Assets/Duha.jpg")),
              ),
              SizedBox(
                height: 46,
                width: 46,
              ),
            ],
          ),

        ),

      ],
    );
  }
}
