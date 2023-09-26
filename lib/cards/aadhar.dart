import 'package:flutter/material.dart';

class AadharCard extends StatelessWidget {
  const AadharCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: SizedBox(
          height: 250,
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/GOVT-EMBLEM.jpg'),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: Image.asset(
                    'assets/aadhar-flag.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                      fit: BoxFit.contain, 'assets/Aadhar_logo-hindi.png'),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.network(
                        'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG.png')),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('साग्निक साहू'),
                    Text(
                      'Sagnik Sahoo',
                      // style: TextStyle(fontFamily: 'Arial'),
                    ),
                    Text(
                      'जन्म तिथि/DOB : DD/MM/YYYY',
                      // style: TextStyle(fontFamily: 'Arial'),
                    ),
                    Text(
                      'पुरुष/Male',
                      // style: TextStyle(fontFamily: 'Arial'),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              '12** **** **** 3456',
              style: TextStyle(
                // fontFamily: 'Arial',
                fontSize: 17.0,
              ),
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.orange,
            ),
            RichText(
              text: const TextSpan(
                  text: 'मेरा ',
                  style: TextStyle(
                    // fontFamily: 'Arial',
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'आधार ',
                      style: TextStyle(
                          // fontFamily: 'Arial',
                          fontSize: 17.0,
                          color: Colors.red),
                    ),
                    TextSpan(
                      text: 'मेरा पहचान',
                      style: TextStyle(
                          //fontFamily: 'Arial',
                          fontSize: 17.0),
                    ),
                  ]),
            ),
          ])),
    );
  }
}
