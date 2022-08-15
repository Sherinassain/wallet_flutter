import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mycontainers extends StatelessWidget {
  final String iconpath;
  final String iconname;
  const Mycontainers({Key? key,
  required this.iconpath,required this.iconname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
           height: 75,
           width: 75,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white,
                      blurRadius: 30,
                      spreadRadius: 10)
                ]),
            child: Center(
              child: Image.network(
                 iconpath),
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          iconname,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.grey.shade700),
        ),
      ],
    );
  }
}
