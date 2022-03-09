import 'package:flutter/material.dart';
import 'package:liftclubapp/widgets/app_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Colors.white,
        child: Column(children: [
          Row(
            children: [
              SizedBox(
                height: 50,
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_back,
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 100,
                  width: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/logo.png')),
                  )),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            'Login',
            style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Username Here',
                hintText: 'Enter Name Here',
              ),
              autofocus: false,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(),
                labelText: 'Enter Username Here',
                hintText: 'Enter Name Here',
              ),
              autofocus: false,
            ),
          ),
        ]),
      ),
    );
  }
}
