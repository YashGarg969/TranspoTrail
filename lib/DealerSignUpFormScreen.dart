import 'package:flutter/material.dart';
class DealerSignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dealer Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DealerSignUpScreen(),
    );
  }
}

class DealerSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dealer Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: DealerSignUpForm(),
      ),
    );
  }
}

class DealerSignUpForm extends StatefulWidget {
  @override
  _DealerSignUpFormState createState() => _DealerSignUpFormState();
}

class _DealerSignUpFormState extends State<DealerSignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String mobileNumber = '';
  String natureOfMaterial = '';
  double weightOfMaterial = 0.0;
  int quantity = 0;
  String city = '';
  String state = '';

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
            style: TextStyle(fontSize: 16.0),
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
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Mobile Number',
              icon: Icon(Icons.phone),
            ),
            style: TextStyle(fontSize: 16.0),
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
            decoration: InputDecoration(
              labelText: 'Nature of Material',
              icon: Icon(Icons.folder),
            ),
            style: TextStyle(fontSize: 16.0),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter the nature of material';
              }
              return null;
            },
            onSaved: (value) => natureOfMaterial = value!,
          ),
          SizedBox(height: 16.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Weight of Material (in KG)',
              icon: Icon(Icons.line_weight),
            ),
            style: TextStyle(fontSize: 16.0),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter the weight of material';
              }
              return null;
            },
            onSaved: (value) => weightOfMaterial = double.parse(value!),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Quantity',
              icon: Icon(Icons.list),
            ),
            style: TextStyle(fontSize: 16.0),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter the quantity';
              }
              return null;
            },
            onSaved: (value) => quantity = int.parse(value!),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'City',
              icon: Icon(Icons.location_city),
            ),
            style: TextStyle(fontSize: 16.0),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your city';
              }
              return null;
            },
            onSaved: (value) => city = value!,
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'State',
              icon: Icon(Icons.location_on),
            ),
            style: TextStyle(fontSize: 16.0),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your state';
              }
              return null;
            },
            onSaved: (value) => state = value!,
          ),
          SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState?.save();
                // Perform the signup action here
                // You can send the form data to your backend server for processing
                // For now, we'll just print the form data
                printFormData();
              }
            },
            child: Text('Sign Up', style: TextStyle(fontSize: 18.0)),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void printFormData() {
    print('Name: $name');
    print('Mobile Number: $mobileNumber');
    print('Nature of Material: $natureOfMaterial');
    print('Weight of Material: $weightOfMaterial KG');
    print('Quantity: $quantity');
    print('City: $city');
    print('State: $state');
  }
}
