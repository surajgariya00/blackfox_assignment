import 'package:blackfox_assignment/Components/reusable_button.dart';
import 'package:blackfox_assignment/Pages/login_page1.dart';
import 'package:flutter/material.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        height: 850,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/lgoo.png',
              width: 80,
            ),
            const Spacer(),
            const Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Lorem ipsum dolor sit amet consectetur. Tristique pretium massa augue egestas.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            ReusableButton(
              buttonText: 'Get Started',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage1()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              'Become a Seller',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )),
          ],
        ),
      ),
    );
  }
}
