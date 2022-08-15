import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class First_container extends StatelessWidget {
  final double Balance;
  final int Cardnumber;
  final int expiarymonth;
  final int expiaryyear;
  final Color;
  const First_container({Key? key,
  required this.Balance,
  required this.Cardnumber,
  required this.expiarymonth,
  required this.expiaryyear,
  required this.Color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,

        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 19,
                    ),
                  Image.network('https://cdn-icons-png.flaticon.com/128/196/196578.png',scale: 4,)
                  ],
                ),
                //balance in text
             
                Text(
                  'Balance',
                  style: TextStyle(color: Colors.white,fontSize: 17),
                ),
                //balance in digit
                SizedBox(
                  height: 15,
                ),
                Text(
                  '\$'+Balance.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //card number

                    Text(
                      '*****'+Cardnumber.toString(),
                      style: TextStyle(color: Colors.white,fontSize: 15),
                    ),
                    //expairy date
                    Text(expiarymonth.toString()+'/'+expiaryyear.toString(), style: TextStyle(color: Colors.white,fontSize: 13)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
