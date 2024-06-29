import 'package:flutter/material.dart';

import '../../../utils/Color.dart';
import 'Components/component.dart';
class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '    Wallets',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height:height*0.05 ,
            ),
            const Text(
              '   OYO Wallets',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    2,
                        (index) => Padding(
                      padding:
                      const EdgeInsets.only(top: 13, right: 10, left: 10),
                      child:  Container(
                        height: height * 0.2,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(card[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            const Text(
              '   Other wallets',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: height*0.3,
              width: width*0.9,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'asset/Images/Payment.jpeg',
                  ),
                  fit: BoxFit.cover,
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
