import 'package:blackfox_assignment/Components/reusable_button.dart';
import 'package:blackfox_assignment/Pages/login_page4.dart';
import 'package:flutter/material.dart';

class LoginPage3 extends StatefulWidget {
  const LoginPage3({super.key});

  @override
  State<LoginPage3> createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildPersonalInformationForm(),
            const SizedBox(height: 16.0),
            _buildBottomStack(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.only(top: 5, right: 16, left: 16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Almost Done',
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          ),
          Text(
            'Enter your personal information to create an account',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 26.0),
        ],
      ),
    );
  }

  Widget _buildPersonalInformationForm() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            labelText: 'Full Name',
          ),
        ),
        const SizedBox(height: 18.0),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            labelText: 'Email Address',
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }

  Widget _buildBottomStack(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('assets/Rectangle 6.png'),
        Positioned(
          bottom: 120,
          child: ReusableButton(
            buttonText: 'Create Account',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage4()),
            ),
          ),
        ),
      ],
    );
  }
}
