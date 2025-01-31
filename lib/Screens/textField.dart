import 'package:flutter/material.dart';
import '../commonTextFiled.dart';

class EmployeeForm extends StatefulWidget {
  @override
  _EmployeeFormState createState() => _EmployeeFormState();
}

class _EmployeeFormState extends State<EmployeeForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Employee Form")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CommonTextField(
              controller: nameController,
              labelText: "Name",
              hintText: "Enter your name",
              prefixIcon: Icons.person,
            ),
            SizedBox(height: 10),
            CommonTextField(
              controller: emailController,
              labelText: "Email",
              hintText: "Enter your email",
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icons.email,
            ),
            SizedBox(height: 10),
            CommonTextField(
              controller: passwordController,
              labelText: "Password",
              hintText: "Enter your password",
              isPassword: true,
              prefixIcon: Icons.lock,
            ),
            SizedBox(height: 10),
            CommonTextField(
              controller: addressController,
              labelText: "Address",
              hintText: "Enter your address",
              maxLines: 3,
              prefixIcon: Icons.location_on,
            ),
          ],
        ),
      ),
    );
  }
}
