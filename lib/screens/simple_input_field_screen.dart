import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/input_fields/simple_input_field_widget.dart';

class SimpleInputFieldScreen extends StatelessWidget {
  SimpleInputFieldScreen({super.key});

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();

  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Input Field'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SimpleInputFieldWidget(
                labelText: 'Name',
                controller: controller1,
                focusNode: focusNode1,
                stringOnly: true,
                maxLines: 1,
                onFieldSubmit: (val) {
                  FocusScope.of(context).requestFocus(focusNode2);
                },
              ),
              SizedBox(height: ht * 0.02),
              SimpleInputFieldWidget(
                labelText: 'Age',
                controller: controller2,
                focusNode: focusNode2,
                digitsOnly: true,
              ),
              SizedBox(height: ht * 0.02),
              SimpleInputFieldWidget(
                labelText: 'Weight',
                controller: controller3,
                doubleOnly: true,
              ),
              SizedBox(height: ht * 0.02),
              SimpleInputFieldWidget(
                labelText: 'Password',
                controller: controller4,
                obscureCharacter: "@",
                isPassword: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
