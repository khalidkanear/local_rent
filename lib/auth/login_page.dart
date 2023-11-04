import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const LoginMobile();
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
  const LoginMobile({super.key});

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
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {},
                  child: const Text(''),
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {},
                  child: const Text(''),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
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
