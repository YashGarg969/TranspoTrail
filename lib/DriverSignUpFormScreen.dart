import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DriverSignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Driver Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DriverSignUpScreen(),
    );
  }
}



class DriverSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: DriverSignUpForm(),
      ),
    );
  }
}

class DriverSignUpForm extends StatefulWidget {
  @override
  _DriverSignUpFormState createState() => _DriverSignUpFormState();
}

class _DriverSignUpFormState extends State<DriverSignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  int age = 0;
  String truckNumber = '';
  String mobileNumber = '';
  int truckCapacity = 0;
  String transporterName = '';
  int drivingExperience = 0;
  String fromStateCity = '';
  String toStateCity = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
              icon: Icon(Icons.person),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            onSaved: (value) => name = value!,
          ),
          SizedBox(height: 16.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Age',
              icon: Icon(Icons.cake),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your age';
              }
              return null;
            },
            onSaved: (value) => age = int.parse(value!),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Truck Number',
              icon: Icon(Icons.local_shipping),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your truck number';
              }
              return null;
            },
            onSaved: (value) => truckNumber = value!,
          ),
          SizedBox(height: 16.0),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Mobile Number',
              icon: Icon(Icons.phone),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your mobile number';
              }
              return null;
            },
            onSaved: (value) => mobileNumber = value!,
          ),
          SizedBox(height: 16.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Truck Capacity',
              icon: Icon(Icons.work),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your truck capacity';
              }
              return null;
            },
            onSaved: (value) => truckCapacity = int.parse(value!),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Transporter Name',
              icon: Icon(Icons.business),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter the transporter name';
              }
              return null;
            },
            onSaved: (value) => transporterName = value!,
          ),
          SizedBox(height: 16.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Driving Experience (years)',
              icon: Icon(Icons.directions_car),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your driving experience';
              }
              return null;
            },
            onSaved: (value) => drivingExperience = int.parse(value!),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'From - State and City',
              icon: Icon(Icons.location_on),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your interested route (From)';
              }
              return null;
            },
            onSaved: (value) => fromStateCity = value!,
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'To - State and City',
              icon: Icon(Icons.location_on),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your interested route (To)';
              }
              return null;
            },
            onSaved: (value) => toStateCity = value!,
          ),
          SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState?.save();
                // Perform the signup action here
                // You can send the form data to your backend server for processing
              }
            },
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}