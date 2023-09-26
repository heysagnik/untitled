import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 80.0,
          title: const Text(
            'Settings',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(children: [
              const SizedBox(height: 20.0),
              Row(
                children: [
                  CircleAvatar(
                      radius: 25.0,
                      //backgroundImage: AssetImage('assets/images/profile.png'),  //Add image here
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10,
                          child: Image.network(
                            fit: BoxFit.cover,
                            'http://pngimg.com/uploads/google/google_PNG19635.png',
                          ),
                        ),
                      )),
                  const SizedBox(width: 20.0),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sagnik Sahoo',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text('sahoosagnik1@gmail.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ))
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    LucideIcons.chevronRight,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              const Card(
                color: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      SizedBox(width: 20.0),
                      Icon(
                        LucideIcons.sparkles,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.0),
                          Text(
                            'Setup a new Passcode',
                            style: TextStyle(
                              fontSize: 20.0,
                              // fontWeight: FontWeight.w100,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text('It helps you from f*cking hackers',
                              style: TextStyle(
                                fontSize: 15.0,
                                //fontWeight: FontWeight.w100,
                                color: Colors.white70,
                              )),
                        ],
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: CloseButton(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Row(
                children: [
                  Icon(
                    LucideIcons.fingerprint,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Security',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    LucideIcons.chevronRight,
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              const Divider(thickness: 1.0),
              const SizedBox(height: 20.0),
              const Row(
                children: [
                  Icon(
                    LucideIcons.palette,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Appearance & Feel',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    LucideIcons.chevronRight,
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              const Divider(thickness: 1.0),
              const SizedBox(height: 20.0),
              const Row(
                children: [
                  Icon(
                    LucideIcons.server,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Storage',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    LucideIcons.chevronRight,
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              const Divider(thickness: 1.0),
              const SizedBox(height: 20.0),
              const Row(
                children: [
                  Icon(
                    LucideIcons.helpCircle,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Help',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    LucideIcons.chevronRight,
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              const Divider(thickness: 1.0),
              const SizedBox(height: 20.0),
              const Text(
                'Made in India  with 💝',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ])));
  }
}
