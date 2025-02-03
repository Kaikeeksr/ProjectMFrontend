import 'package:flutter/material.dart';
import 'package:projectm_mobile/screens/signin_screen.dart';
import 'package:projectm_mobile/screens/signup_screen.dart';
import 'package:projectm_mobile/themes/theme.dart';
import 'package:projectm_mobile/widgets/custom_scaffold.dart';
import 'package:projectm_mobile/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
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
          Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Entre',
                      onTap: SigninScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Cadastre-se',
                      onTap: SignUpScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  )
                ]),
              ))
        ],
      ),
    );
  }
}
