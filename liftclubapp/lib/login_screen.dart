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
  bool isSwitched = false;
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
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                  activeColor: Colors.black,
                  value: isSwitched,
                  onChanged: (val) => {
                        setState((() {
                          isSwitched = val;
                        }))
                      }),
              const Text("Remember me ?")
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          AppButton(
              buttonText: 'Login', isLongButton: true, onPressed: () => {}),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Forgot Password ?',
            style: TextStyle(color: Colors.blue),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [const Text('version 1.0')],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
