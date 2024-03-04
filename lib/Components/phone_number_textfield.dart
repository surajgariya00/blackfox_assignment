import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberInput extends StatefulWidget {
  const PhoneNumberInput({super.key});

  @override
  PhoneNumberInputState createState() => PhoneNumberInputState();
}

class PhoneNumberInputState extends State<PhoneNumberInput> {
  final TextEditingController _controller = TextEditingController();
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'US');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: InternationalPhoneNumberInput(
          onInputChanged: (PhoneNumber number) {
            phoneNumber = number;
          },
          selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          ),
          textFieldController: _controller,
          formatInput: true,
          keyboardType: TextInputType.phone,
          inputDecoration: const InputDecoration(
            contentPadding: EdgeInsets.only(
              bottom: 10.0,
            ),
            hintText: 'Mobile Number',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
