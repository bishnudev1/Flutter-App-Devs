import 'package:flutter/material.dart';
import 'package:hello_world/utils/routes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = '';
  String password = '';
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  loginData(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/Education.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Login ${name}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Name...",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value == '') {
                          return "Username can not be empty";
                        }

                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password...",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == '') {
                          return "Password can not be empty";
                        }

                        return null;
                      },
                      onChanged: (value) {
                        password = value;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      color: Colors.deepPurple,
                      child: InkWell(
                        onTap: () => loginData(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          width: changeButton ? 50 : 120,
                          height: 35,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(Icons.done)
                              : Text(
                                  "Login Now",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
