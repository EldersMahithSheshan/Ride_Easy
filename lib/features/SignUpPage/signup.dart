// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ride_easy/common/customappbar.dart';
import 'package:ride_easy/features/LoginPage/login.dart';

import 'package:ride_easy/features/SignUpPage/bankcard.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: ClipPath(
          clipper: CustomAppBar(),
          child: Container(
            color: Colors.green,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const LoginPage())); // Navigate back
                      },
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),

                // Adjust spacing as needed
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          // ignore: unnecessary_const
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.camera_alt,
                  size: 40,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'First name',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Last name',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Home address',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: UnderlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Date of Birth',
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.datetime,
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Gender',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Identity Card Number',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity, // Make button take full width
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BankCardPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Create Account',
                          style: TextStyle(color: Colors.grey)),
                      Icon(Icons.arrow_forward, color: Colors.grey),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
