import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:local_rent/mobileapp/appbar.dart';
import 'package:local_rent/mobileapp/auth/login_page.dart';
import 'package:local_rent/mobileapp/home.dart';

import 'package:local_rent/mobileapp/navbar.dart';

import 'package:local_rent/mobileapp/widgets/customtext_form_field.dart';
import 'package:local_rent/services/firebase_services.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final _emailController = TextEditingController(),
      _passwordController = TextEditingController(),
      _userNameController = TextEditingController(),
      _confirmPassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isprofile: false),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Create Account',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    CustomTextFormField(
                        validator: (v) {
                          if (v!.isEmpty || v.length < 4) {
                            return 'please enter valid username';
                          }
                          return null;
                        },
                        hint: 'Username',
                        controller: _userNameController),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                        validator: (v) {
                          if (v!.isEmpty ||
                              !v.contains('@') ||
                              !v.contains('.com')) {
                            return 'please enter valid email';
                          }

                          return null;
                        },
                        hint: 'Email',
                        controller: _emailController),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                        validator: (v) {
                          if (v!.isEmpty || v.length < 6) {
                            return 'enter minimum 6 characters password';
                          }
                          return null;
                        },
                        hint: 'Password',
                        controller: _passwordController),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                        validator: (v) {
                          if (v == _passwordController.text.trim()) {
                            return null;
                          }
                          return 'password don\'t match';
                        },
                        hint: 'Confirm Password',
                        controller: _confirmPassController),
                    CheckboxListTile.adaptive(
                      contentPadding: EdgeInsets.zero,
                      value: true,
                      onChanged: (v) {},
                      controlAffinity: ListTileControlAffinity.leading,
                      title: const Text(
                        'Remember Password',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          final message = await AuthService().registration(
                              email: _emailController.text.trim(),
                              password: _passwordController.text.trim());
                          if (message!.contains('Success')) {
                            Get.snackbar('Message', message,
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: Colors.green,
                                colorText: Colors.white);
                            await Get.off(() => const NavBar());
                          }
                          Get.snackbar('Error', message,
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.red,
                              colorText: Colors.white);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff000000),
                          foregroundColor: const Color(0xfff6f6f6),
                          fixedSize: const Size(300, 40)),
                      child: const Text('SignUp'),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(() => LoginPage());
                        },
                        child: const Text('Already Have Account? Sign In'))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
