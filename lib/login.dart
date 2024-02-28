import 'package:flutter/material.dart';
import 'package:fyp_mid/Signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/download.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            padding: EdgeInsets.only(left: 30, top: 90),
            child: Text('Welcome\nBack',
                style: TextStyle(color: Colors.orange, fontSize: 30)),
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.5,
                left: 20,
                right: 20),
            child: Column(children: [
              TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)))),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)))),
              SizedBox(
                height: 5,
              ),
              Text('Forgot password?', style: TextStyle(color: Colors.blue)),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  'log in',
                  style: TextStyle(color: Colors.white),
                )),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'OR',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signup(),
                      ));
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.black),
                  )),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
