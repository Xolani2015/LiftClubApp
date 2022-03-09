import 'package:flutter/material.dart';
import 'package:liftclubapp/login_screen.dart';
import 'package:liftclubapp/widgets/app_buttons.dart';

class LandingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LandingScreenState();
  }
}

class LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Better Travelling',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Taxilogo2.png'),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppButton(
                  buttonText: 'Login',
                  onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen())),
                    print('Lets go to the login page')
                  },
                ),
                AppButton(
                  buttonText: 'Sign up',
                  onPressed: () => {},
                )
              ],
            )
          ]),
    );
    ;
  }
}
