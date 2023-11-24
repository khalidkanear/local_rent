import 'package:flutter/material.dart';
import 'package:local_rent/categories.dart';
import 'auth/login_page.dart';

import 'main.dart';
import 'auth/signup_page.dart';

class listen extends StatefulWidget {
  const listen({super.key});

  @override
  State<listen> createState() => _listenState();
}

class _listenState extends State<listen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var buttonstyle = TextStyle(
        fontSize: size.width / 70,
        color: Colors.black,
        fontWeight: FontWeight.w700);
    var buttonstyle1 = TextStyle(
        fontSize: size.width / 40,
        color: Colors.black,
        fontWeight: FontWeight.w700);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/Logo.png',
                      height: size.height / 8,
                      width: size.width / 5,
                    ),
                  ),
                  Flexible(
                      child: LayoutBuilder(builder: (context, constraints) {
                    if (constraints.maxWidth > 600) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width / 4,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const LandingPage()));
                              },
                              child: Text(
                                'ABOUT US',
                                style: buttonstyle,
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const SignUp()));
                              },
                              child: Text(
                                'SIGN UP',
                                style: buttonstyle,
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const LoginPage()));
                              },
                              child: Text(
                                'LOGIN',
                                style: buttonstyle,
                              ))
                        ],
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width / 6,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const LandingPage()));
                            },
                            child: Text(
                              'ABOUT US',
                              style: buttonstyle1,
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const SignUp()));
                            },
                            child: Text(
                              'SIGN UP',
                              style: buttonstyle1,
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const LoginPage()));
                            },
                            child: Text(
                              'LOGIN',
                              style: buttonstyle1,
                            ))
                      ],
                    );
                  })),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Renting Made Easy:',
              style: TextStyle(
                  fontSize: size.width / 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nomada Slab'),
            ),
            Text(
              'List, Rent, Earn – It\'s That Simple!',
              style: TextStyle(
                fontSize: size.width / 37,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 700) {
                return Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: (size.height / 100) * 20,
                      child: Image.asset(
                        'assets/happy.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: (size.width / 100) * 10,
                          right: (size.width / 100) * 10),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Are you tired of letting your belongings collect dust while they could be making you money? At The Local Rent, we\'ve created a community-powered rental platform that allows you to monetize your idle possessions effortlessly. It\'s time to unlock the earning potential of your stuff and turn them into a source of passive income!',
                          style: TextStyle(
                            fontSize: size.width / 30,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            maximumSize: const Size(260, 60),
                            minimumSize: const Size(260, 60),
                            padding: const EdgeInsets.all(20),
                            backgroundColor:
                                Colors.cyanAccent.withOpacity(0.4)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Categories()));
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Text(
                                'Join Now',
                                style: buttonstyle1.copyWith(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Icon(
                              Icons.arrow_right,
                              size: size.width / 40,
                              color: Colors.white,
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      'How it Works',
                      style: TextStyle(
                          fontSize: size.width / 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '3 Easy Steps',
                      style: TextStyle(
                        fontSize: size.width / 25,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                );
              }
              return Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: (size.height / 100) * 60,
                    child: Image.asset(
                      'assets/happy.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: (size.width / 100) * 10,
                        right: (size.width / 100) * 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Are you tired of letting your belongings collect dust while they could be making you money? At The Local Rent, we\'ve created a community-powered rental platform that allows you to monetize your idle possessions effortlessly. It\'s time to unlock the earning potential of your stuff and turn them into a source of passive income!',
                        style: TextStyle(
                          fontSize: size.width / 50,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          maximumSize: const Size(360, 60),
                          minimumSize: const Size(360, 60),
                          padding: const EdgeInsets.all(20),
                          backgroundColor: Colors.cyanAccent.withOpacity(0.4)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Categories()));
                      },
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Text(
                              'Rent Now',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    'How it Works',
                    style: TextStyle(
                        fontSize: size.width / 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '3 Easy Steps',
                    style: TextStyle(
                      fontSize: size.width / 35,
                    ),
                  ),
                ],
              );
            }),
            const SizedBox(
              height: 30,
            ),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 900) {
                return Container(
                  width: double.infinity,
                  color: Colors.black87,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width / 5, right: size.width / 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80.0,
                              // Adjust the width and height as needed
                              height: 80.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.cyanAccent.withOpacity(
                                    0.6), // Set your desired background color
                              ),
                              child: const Center(
                                  child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ),
                            Container(
                              width: 80.0,
                              // Adjust the width and height as needed
                              height: 80.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.cyanAccent.withOpacity(
                                    0.6), // Set your desired background color
                              ),
                              child: const Center(
                                  child: Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ),
                            Container(
                              width: 80.0,
                              // Adjust the width and height as needed
                              height: 80.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.cyanAccent.withOpacity(
                                    0.6), // Set your desired background color
                              ),
                              child: const Center(
                                  child: Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width / 10,
                            right: size.width / 10,
                            top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: size.width / 4,
                              child: const Text(
                                "List your items on our platform with a few clicks. Our user-friendly interface ensures a hassle-free listing process, making it convenient for you to showcase what you have to offer.",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: size.width / 4,
                              child: const Text(
                                "Once a reservation is made, all you need to do is approve/ coordinate the pickup or delivery of the item. Our messaging system allows seamless communication between you and the renter, ensuring a smooth transaction.",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: size.width / 4,
                              child: const Text(
                                "After the rental period, you receive your item back in the same condition, ready to be rented out again. And the best part? You get paid! Our platform handles the financial transactions, so you can effortlessly earn extra income without any hassle.",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                );
              }
              return Container(
                width: double.infinity,
                color: Colors.black87,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 80.0,
                              // Adjust the width and height as needed
                              height: 80.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.cyanAccent.withOpacity(
                                    0.6), // Set your desired background color
                              ),
                              child: const Center(
                                  child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: size.width / 2,
                              child: const Text(
                                "List your items on our platform with a few clicks. Our user-friendly interface ensures a hassle-free listing process, making it convenient for you to showcase what you have to offer.",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 80.0,
                              // Adjust the width and height as needed
                              height: 80.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.cyanAccent.withOpacity(
                                    0.6), // Set your desired background color
                              ),
                              child: const Center(
                                  child: Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: size.width / 2.5,
                              child: const Text(
                                "Once a reservation is made, all you need to do is approve/ coordinate the pickup or delivery of the item.",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 80.0,
                              // Adjust the width and height as needed
                              height: 80.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.cyanAccent.withOpacity(
                                    0.6), // Set your desired background color
                              ),
                              child: const Center(
                                  child: Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: size.width / 2.5,
                              child: const Text(
                                "After the rental period, you receive your item back in the same condition, ready to be rented out again.",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              );
            }),
            SizedBox(
              height: size.height / 15,
            ),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 730) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: size.height / 2,
                        width: size.height / 2,
                        child: Image.asset(
                          "assets/l2.png",
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: size.width / 5,
                          child: const Text(
                            "Join our community of smart entrepreneurs who are turning their stuff into a lucrative rental business.\n\nRenting made easy with The Local Rent – list your items, rent them out, and start earning today!",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                maximumSize: const Size(260, 60),
                                minimumSize: const Size(260, 60),
                                padding: const EdgeInsets.all(4),
                                backgroundColor:
                                    Colors.cyanAccent.withOpacity(0.4)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Join Now',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                Icon(
                                  Icons.arrow_right,
                                  size: 25,
                                  color: Colors.white,
                                )
                              ],
                            )),
                      ],
                    ),
                  ],
                );
              }
              return Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(30),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Join our community of smart entrepreneurs who are turning their stuff into a lucrative rental business.\n\nRenting made easy with The Local Rent – list your items, rent them out, and start earning today!",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          maximumSize: const Size(300, 40),
                          minimumSize: const Size(300, 40),
                          padding: const EdgeInsets.all(2),
                          backgroundColor: Colors.cyanAccent.withOpacity(0.4)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Join Now',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: 25,
                            color: Colors.white,
                          )
                        ],
                      )),
                ],
              );
            }),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              color: Colors.black87,
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width / 10,
                    right: size.width / 10,
                    top: 20,
                    bottom: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Join',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Become a Renter',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Find an Item',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Become an Affiliate',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage('assets/fblogo.png'),
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Image(
                          image: AssetImage('assets/img.png'),
                          height: 40,
                          width: 40,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
