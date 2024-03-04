import 'package:blackfox_assignment/Components/reusable_button.dart';
import 'package:blackfox_assignment/Pages/login_page3.dart';
import 'package:flutter/material.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  LoginPage2State createState() => LoginPage2State();
}

class LoginPage2State extends State<LoginPage2> {
  final List<TextEditingController> _otpControllers =
      List.generate(5, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(5, (index) => FocusNode());

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < _otpControllers.length - 1; i++) {
      _otpControllers[i].addListener(() {
        if (_otpControllers[i].text.length == 1) {
          _focusNodes[i + 1].requestFocus();
        }
      });
    }
  }

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
            const SizedBox(height: 30.0),
            _buildOtpRow(),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Enter Code',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
          const Text(
            'We’ve sent an SMS with an activation code to your phone +33 2 94 27 84 11',
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 35.0),
          _buildOtpRow(),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }

  Widget _buildOtpRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        5,
        (index) => Container(
          width: 60.0,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Colors.grey),
          ),
          child: TextField(
            controller: _otpControllers[index],
            focusNode: _focusNodes[index],
            maxLength: 1,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              counterText: "",
              border: InputBorder.none,
            ),
          ),
        ),
      ),
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
            buttonText: 'Verify',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage3()),
            ),
          ),
        ),
      ],
    );
  }
}
