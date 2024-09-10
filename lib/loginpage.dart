
import 'package:demo_app/Onboard/Bottomnavigation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  bool isobscure = true;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://img.freepik.com/free-photo/3d-vertical-background-with-abstract-style_23-2150641317.jpg?t=st=1725949368~exp=1725952968~hmac=45c7b4811598de07e1ab8baec0731ba2170e2ea52356079c9d136a2b19f22cdb&w=360"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 120, horizontal: 20),
              child: Text(
                "Welcome Back",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            const Spacer(),
            Container(
              height: 450,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email can't be empty";
                          }
                          return null;
                        },
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          hintText: "example@gmail.com",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: const BorderSide(color: Colors.blue)),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password can't be empty";
                          }
                          if (value.length < 3) {
                            return "invalid password";
                          }
                          return null;
                        },
                        controller: passcontroller,
                        obscureText: isobscure,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: MaterialButton(
                            onPressed: () {
                              setState(() {
                                isobscure = !isobscure;
                              });
                            },
                            child: const Icon(Icons.visibility),
                          ),
                          hintText: "Enter your Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: const BorderSide(color: Colors.blue)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Forgot your password?"),
                      const Spacer(),
                      MaterialButton(
                        minWidth: 350,
                        height: 40,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: const Color(0xffb254b8),
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Bottomnavigation(),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: RichText(
                            text: const TextSpan(
                                text: "Don't have account?",
                                style: TextStyle(color: Colors.black),
                                children: <TextSpan>[
                              TextSpan(
                                  text: "Sign Up",
                                  style: TextStyle(color: Colors.blue))
                            ])),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}