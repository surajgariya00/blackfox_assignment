import 'package:blackfox_assignment/Components/phone_number_textfield.dart';
import 'package:blackfox_assignment/Components/reusable_button.dart';
import 'package:blackfox_assignment/Pages/login_page2.dart';
import 'package:flutter/material.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({super.key});

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
            _buildPhoneNumberSection(),
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
          Text('Welcome.',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
          Text('Login in to your account', style: TextStyle(fontSize: 18.0)),
          SizedBox(height: 26.0),
          PhoneNumberInput(),
          SizedBox(height: 16.0),
          Text(
            'You will receive an SMS verification that may apply message and data rates.',
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  Widget _buildPhoneNumberSection() {
    return const SizedBox(height: 16.0);
  }

  Widget _buildBottomStack(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('assets/Rectangle 6.png'),
        Positioned(
          bottom: 160,
          child: ReusableButton(
            buttonText: 'Send OTP',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage2()),
            ),
          ),
        ),
        const Positioned(
          bottom: 110,
          child: Text(
            'Skip Process',
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
