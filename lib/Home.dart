import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4b5320),
        title: Text(
          'AppHub',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      
      ),
      body: Container(
        color: Color(0xff1d1c1b),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text(
              'Welcome, User!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Explore your features:',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),


            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  buildFeatureCard(
                    context,
                    icon: Icons.bar_chart,
                    label: 'BMI Calculator',
                    onTap: () {},
                  ),
                  buildFeatureCard(
                    context,
                    icon: Icons.person,
                    label: 'Profile',
                    onTap: () {},
                  ),
                  buildFeatureCard(
                    context,
                    icon: Icons.dashboard,
                    label: 'Dashboard',
                    onTap: () {},
                  ),
                  buildFeatureCard(
                    context,
                    icon: Icons.card_membership,
                    label: 'Visiting Card',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFeatureCard(BuildContext context,
      {required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff2b3728),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Color(0xffd1f42b),
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
