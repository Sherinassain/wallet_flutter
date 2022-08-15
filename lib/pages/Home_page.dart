import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_flutter/pages/containers/first_container.dart';
import 'package:wallet_flutter/pages/containers/my_tiles.dart';
import 'package:wallet_flutter/pages/mycontainers.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
    child: Icon(Icons.monetization_on,color: Colors.white,size: 32,),
      backgroundColor: Colors.pink,),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  bottomNavigationBar: BottomAppBar(
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.pink[200],size: 32,)),
      IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.grey,size: 32,))
    ],),
  ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(
                        'My',
                        style:
                            TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 26),
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.add))
              ],
            ),
          ),
          SizedBox(
            height: 29,
          ),
          // Card area
          Container(
            height: 170,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                First_container(
                  Balance: 7345.00,
                  Cardnumber: 764538,
                  expiarymonth: 11,
                  expiaryyear: 24,
                  Color: Colors.deepPurple[400],
                ),
                First_container(
                    Balance: 45638.00,
                    Cardnumber: 653427,
                    expiarymonth: 08,
                    expiaryyear: 22,
                    Color: Colors.blue[300]),
                First_container(
                    Balance: 6546.75,
                    Cardnumber: 875425,
                    expiarymonth: 05,
                    expiaryyear: 28,
                    Color: Colors.black45),
                First_container(
                    Balance: 76453.68,
                    Cardnumber: 674536,
                    expiarymonth: 09,
                    expiaryyear: 23,
                    Color: Colors.black87)
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Mycontainers(
                  iconpath:
                      'https://cdn-icons.flaticon.com/png/128/2769/premium/2769257.png?token=exp=1660562472~hmac=1d1d6036b2c61c39371e7126c4bb20b1',
                  iconname: 'Send'),
              Mycontainers(
                  iconpath:
                      'https://cdn-icons-png.flaticon.com/128/893/893081.png',
                  iconname: 'Pay'),
              Padding(
                padding: const EdgeInsets.only(right: 6),
                child: Mycontainers(
                    iconpath:
                        'https://cdn-icons.flaticon.com/png/128/1052/premium/1052815.png?token=exp=1660564907~hmac=6797a5b9090570b1e1c0d53a0109cf65',
                    iconname: 'Bills'),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              My_tiles(bottomiconpaths: 'https://cdn-icons.flaticon.com/png/128/2041/premium/2041643.png?token=exp=1660566026~hmac=77449dfe5f485fbe480b6313d986e1a6', headername: 'Statistics', subname: 'Payment and income'),
              My_tiles(bottomiconpaths: 'https://cdn-icons-png.flaticon.com/128/7257/7257727.png', headername: 'Transactions', subname: 'Transaction History'),
            ],
          )
        ],
      )),
    );
  }
}
