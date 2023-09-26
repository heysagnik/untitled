import 'package:flutter/material.dart';

class PanCard extends StatelessWidget {
  const PanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlueAccent[100],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: SizedBox(
          height: 260,
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'आयकर विभाग',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Noto Sans Devanagari',
                      ),
                    ),
                    Text('INCOME TAX DEPARTMENT',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          letterSpacing: -2,
                        ))
                  ],
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/GOVT-EMBLEM.jpg'),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Column(
                  children: [
                    Text(
                      'भारत सरकार',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Noto Sans Devanagari',
                      ),
                    ),
                    Text('GOVT.OF INDIA',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          letterSpacing: -1.5,
                        ))
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(
                        'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG.png')),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  children: [
                    Text(
                      'स्थायी लेखा संख्या कार्ड',
                      style: TextStyle(
                        color: Colors.indigo,
                      ),
                    ),
                    Text(
                      'Permanent Account Number Card',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        letterSpacing: -1.5,
                        color: Colors.indigo,
                      ),
                    ),
                    Text(
                      'XXXXXXXXXX',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'नाम/Name',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.indigo,
                          fontSize: 12),
                    ),
                    Text(
                      'SAGNIK SAHOO',
                      style: TextStyle(fontFamily: 'Arial', fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 5),
            const Row(
              children: [
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'पिता का नाम/Fathers Name',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.indigo,
                          fontSize: 12),
                    ),
                    Text(
                      'XXXXX XXXXX XXXXX',
                      style: TextStyle(fontFamily: 'Arial', fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 5),
            const Row(
              children: [
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'जन्म की तारीख /Date of Birth',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.indigo,
                          fontSize: 12),
                    ),
                    Text(
                      'DD/MM/YYYY',
                      style: TextStyle(fontFamily: 'Arial', fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Card(
                      shadowColor: Colors.transparent,
                      color: Colors.white,
                      child: SizedBox(
                        width: 120,
                        height: 25,
                        child: Text('Signature',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 12,
                            )),
                      ),
                    ),
                    Text(
                      'हस्ताक्षर/Signature',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 12,
                        color: Colors.indigo,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ])),
    );
  }
}
