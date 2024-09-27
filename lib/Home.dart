import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff4b5320),
        title: const Text(
          "AppHub",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back!  User",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Explore Your Feature :",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                  image: NetworkImage(
                      "https://img.freepik.com/free-vector/telecommuting-concept-illustration_52683-36163.jpg?t=st=1725954197~exp=1725957797~hmac=956c2a0d0b4b136d675a42d888edfe736c286dd7fd243dcea3fee400632ab7f6&w=740")),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: IconButton(onPressed: () {},
                          icon: Icon(Icons.person,
                          size: 30,
                          color: Colors.orange,
                          )),
                        )
                      ],
                    ),
                  )),
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.calculate,
                                size: 30,
                                color: Colors.orange,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.pie_chart,
                                size: 30,
                                color: Colors.orange,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
