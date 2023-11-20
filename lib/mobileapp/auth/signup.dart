import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:local_rent/mobileapp/appbar.dart';
import 'package:local_rent/mobileapp/profile/profile_page.dart';
import 'package:local_rent/mobileapp/widgets/customtext_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                CustomTextFormField(hint: 'Username'),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(hint: 'Email'),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(hint: 'Password'),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(hint: 'Confirm Password'),
                CheckboxListTile.adaptive(
                  contentPadding: EdgeInsets.zero,
                  value: false,
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
                  onPressed: () {
                    Get.to(() => const UserProfile());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff000000),
                      foregroundColor: const Color(0xfff6f6f6),
                      fixedSize: const Size(300, 40)),
                  child: const Text('SignUp'),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('Already Have Account? Sign In'))
              ],
            ),
          )),
        ],
      ),
    );
  }
}
