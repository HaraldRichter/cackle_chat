import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../widgets/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  // "with SingleTickerProviderStateMixin" erweitert das State-Widget mit der Möglichkeit,
  // einen Ticker für die Animation bereitzustellen. Der SingleTickerProvider kann eine
  // Animation hervorbringen, falls wir meherere Animationen verwenden wollen, benötigen wir
  // einen "TickerProviderStateMixin" als Addon.
  // Mixin: Ein Mixin erweitert eine Klasse um spezifische Möglichkeiten. Eine Klasse kann
  // mit mehreren Mixins versehen werden.

  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animation =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);

    controller.forward();

    setState(() {});
    controller.addListener(() {});
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  child: AnimatedTextKit(
                    totalRepeatCount: 1,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Cackle',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            LongButton(
              buttonColor: Colors.lightBlueAccent,
              buttonLabel: 'Log in',
              onPressed: () {
                GoRouter.of(context).pushNamed('login');
              },
            ),
            LongButton(
              buttonColor: Colors.blueAccent,
              buttonLabel: 'Register',
              onPressed: () {
                GoRouter.of(context).pushNamed('registration');
              },
            ),
          ],
        ),
      ),
    );
  }
}
