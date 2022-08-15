import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class My_tiles extends StatelessWidget {
  final String bottomiconpaths;
  final String headername;
  final String subname;
  const My_tiles({Key? key, required this.bottomiconpaths, required this.headername, required this.subname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(color: Colors.white54,borderRadius: BorderRadius.circular(20),boxShadow: [BoxShadow(color: Colors.grey.shade300,blurRadius: 20,spreadRadius: 2)]),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
           bottomiconpaths),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 headername,
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  subname,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
