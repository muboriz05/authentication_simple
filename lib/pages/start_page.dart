import 'package:flutter/material.dart';
import 'package:flutter_application21/pages/sign_up.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.m, color: Colors.blue, size: 50),
                  SizedBox(width: 10),
                  FaIcon(FontAwesomeIcons.u, color: Colors.blue, size: 50),
                  SizedBox(width: 10),
                  FaIcon(FontAwesomeIcons.b, color: Colors.blue, size: 50),
                  SizedBox(width: 10),
                  FaIcon(FontAwesomeIcons.o, color: Colors.blue, size: 50),
                  SizedBox(width: 10),
                  FaIcon(FontAwesomeIcons.r, color: Colors.blue, size: 50),
                  SizedBox(width: 10),
                  FaIcon(FontAwesomeIcons.i, color: Colors.blue, size: 50),
                  SizedBox(width: 10),
                  FaIcon(FontAwesomeIcons.z, color: Colors.blue, size: 50),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUp()));
                        },
                        child: const Text('Get Started',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
