import 'package:flutter/material.dart';
import 'package:transpo_trail/DealerSignUpFormScreen.dart';
import 'package:transpo_trail/DriverSignUpFormScreen.dart';

void main() {
  runApp(SelectionScreen());
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Selection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserSelectionScreen(),
    );
  }
}

class UserSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Navigate to driver signup screen
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DriverSignUpScreen()));
              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 4.0,
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/driver.png'),

                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),

                color: Colors.blue,
              ),
              child: Text(
                'I am a Driver',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                // Navigate to dealer signup screen
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DealerSignUpScreen()));
              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 4.0
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/dealer.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(75),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),

                color: Colors.blue,
              ),
              child: Text(
                'I am a Dealer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
