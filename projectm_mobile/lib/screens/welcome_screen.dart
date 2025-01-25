import 'package:flutter/material.dart';
import 'package:projectm_mobile/widgets/custom_scaffold.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              child: Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
            child: Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: "Bem-vindo!\n",
                          style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                          )),
                      TextSpan(
                          text:
                              "\n bla bla bla bla bla bla bla bla bal bal bal bla bal blla",
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ]))),
          )),
        ],
      ),
    );
  }
}
