import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/download.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 30, top: 90),
            child: const Text('Creat\nAccount',
                style: TextStyle(color: Colors.orange, fontSize: 30)),
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.4,
                left: 20,
                right: 20),
            child: Column(children: [
              TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      hintText: 'Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)))),
              const SizedBox(
                height: 10,
              ),
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
                height: 40,
              ),
              InkWell(
                onTap: () {
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              const SizedBox(
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
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                        'Login',
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
