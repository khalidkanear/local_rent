import 'package:flutter/material.dart';
import 'package:local_rent/mobileapp/appbar.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isprofile: true),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(color: Colors.black),
                child: const Text(
                  'EDIT',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade100,
                    backgroundImage: const AssetImage(
                      'assets/Logo.png',
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
