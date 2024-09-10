import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffa17f1a ),
      appBar: AppBar(
        backgroundColor: Color(0xff4b5320),
        title: const  Text(
          "AppHub",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        //centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("lib/assets/1-Copy 59405 copy (1).JPG"),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Mahmudul Sajid",
              style: GoogleFonts.poppins(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Flutter Developer",
              style: GoogleFonts.quicksand(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.phone,size: 35,),
                          Text("Phone",style: TextStyle(fontSize: 15),),
                          
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.mail,size: 35,),
                          Text("Mail",style: TextStyle(fontSize: 15),)
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.facebook,size: 35,),
                          Text("Facebook",style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Text(
                "Hello I am Mahmudul Sajid. I am a flutter developer. I am interested in coding. I also love to playing football and travelling.",
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}