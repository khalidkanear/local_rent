import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:local_rent/mobileapp/auth/signup.dart';
import 'package:local_rent/mobileapp/navbar.dart';
import 'package:local_rent/mobileapp/widgets/customtext_form_field.dart';
import 'package:local_rent/services/firebase_services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return LoginMobile();
          } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
            return const LoginTablet();
          } else {
            return const LoginDesktop();
          }
        },
      ),
    );
  }
}

class LoginMobile extends StatelessWidget {
  LoginMobile({super.key});
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(),
      _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 10,
              ),
              Image.asset(
                'assets/Logo.png',
                height: 120,
                width: 120,
              ),
              const SizedBox(height: 8),
              const Text(
                'Login to your account',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 35),
              CustomTextFormField(
                  validator: (v) {
                    if (v!.isEmpty || !v.contains('@') || !v.contains('.com')) {
                      return 'please enter valid email';
                    }

                    return null;
                  },
                  hint: 'Email',
                  controller: _emailController),
              const SizedBox(height: 20),
              CustomTextFormField(
                  validator: (v) {
                    if (v!.isEmpty || v.length < 6) {
                      return 'enter minimum 6 characters password';
                    }
                    return null;
                  },
                  hint: 'Password',
                  controller: _passwordController),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final message = await AuthService().login(
                        email: _emailController.text.trim(),
                        password: _passwordController.text.trim());
                    if (message!.contains('Success')) {
                      Get.snackbar('Message', message,
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.green,
                          colorText: Colors.white);
                      await Get.offAll(() => const NavBar());
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
                child: const Text('Login'),
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Get.to(() => SignUpPage());
                },
                child: const Text('Don\'t have account please SignUp'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginTablet extends StatelessWidget {
  const LoginTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Welcome back',
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Login to your account',
                  ),
                  const SizedBox(height: 35),
                  TextFormField(
                      //...
                      ),
                  const SizedBox(height: 20),
                  TextFormField(
                      //...
                      ),
                  const SizedBox(height: 25),
                  const Row(
                      //...
                      ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {}, child: const Text('data'),
                    //...
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {}, child: const Text('data'),
                    //...
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginDesktop extends StatelessWidget {
  const LoginDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            //<-- Expanded widget
            child: Image.asset(
          'assets/preview.png',
          fit: BoxFit.cover,
        )),
        Expanded(
          //<-- Expanded widget
          child: Container(
            constraints: const BoxConstraints(maxWidth: 21),
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Welcome back',
                ),
                const SizedBox(height: 8),
                const Text(
                  'Login to your account',
                ),
                const SizedBox(height: 35),
                const TextField(
                    //...
                    ),
                const SizedBox(height: 20),
                const TextField(
                    //...
                    ),
                const SizedBox(height: 25),
                const Row(
                    //...
                    ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {},
                  child: const Text('data'),
                ),
                const SizedBox(height: 15),
                TextButton(onPressed: () {}, child: const Text(''))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
