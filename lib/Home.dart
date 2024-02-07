import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getx/ListView.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController cityController = TextEditingController();
   late String _name, _email, _mobile,_city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    TextFormField(
                      style: const TextStyle(color: Colors.grey),
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.grey,
                      autofocus: true,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z\s]')),
                      ],
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        contentPadding:
                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                        fillColor: Colors.white,
                        focusColor: Colors.grey,
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                            BorderSide(width: 1, color: Colors.red)),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        filled: true,
                      ),
                      onChanged: (value) {
                        _name = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Username';
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: const TextStyle(color: Colors.grey),
                      controller: emailController,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.grey,
                      autofocus: true,
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp(r'\s')), // Remove spaces
                      ],
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        contentPadding:
                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                        fillColor: Colors.white,
                        focusColor: Colors.grey,
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                            BorderSide(width: 1, color: Colors.red)),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        filled: true,
                      ),
                      onChanged: (value) {
                        _email = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Email';
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: const TextStyle(color: Colors.grey),
                      controller: mobileController,
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.grey,
                      autofocus: true,
                      inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: const InputDecoration(
                        labelText: 'Mobile Number',
                        prefixIcon: Icon(Icons.call),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        contentPadding:
                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                        fillColor: Colors.white,
                        focusColor: Colors.grey,
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                            BorderSide(width: 1, color: Colors.red)),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        filled: true,
                      ),
                      onChanged: (value) {
                        _mobile = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Mobile Number';
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: const TextStyle(color: Colors.grey),
                      controller: cityController,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.grey,
                      autofocus: true,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')),
                      ],
                      decoration: const InputDecoration(
                        labelText: 'City',
                        prefixIcon: Icon(Icons.location_city),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        contentPadding:
                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                        fillColor: Colors.white,
                        focusColor: Colors.grey,
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                            BorderSide(width: 1, color: Colors.red)),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        filled: true,
                      ),
                      onChanged: (value) {
                        _city = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter City';
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          print('Username       =  ' + _name);
                          print('Email          =  ' + _email);
                          print('Mobile Number  =  ' + _mobile);
                          print('city           =  ' + _city);

                          nameController.clear();
                          emailController.clear();
                          mobileController.clear();
                          cityController.clear();
                          setState(() {});

                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ListViewPage(
                              _name, _email, _mobile,_city),
                          )
                          );
                        };
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(20.0), // Border radius
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.black, fontSize: 15 // Text color
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
