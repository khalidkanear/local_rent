import 'package:flutter/material.dart';

import '../auth/login_page.dart';
import '../auth/signup_page.dart';
import '../main.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
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
                                'MAIN',
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
                            ),
                          ),
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
                              'MAIN',
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
            SizedBox(
              height: size.width / 40,
            ),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return Column(
                  children: [
                    SizedBox(
                      width: (size.width / 100) * 80,
                      child: Text(
                        'Discover a world of possibilities in your neighborhood! Join The Local Rent community today and unlock a whole new way to connect, save money, and experience exciting adventures.',
                        style: TextStyle(
                            fontSize: size.width / 30, color: Colors.black87),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: (size.width / 100) * 80,
                      child: Text(
                        'Meet Your Neighbors:\nJoining The Local Rent opens the door to a vibrant community of like-minded individuals right in your neighborhood. Connect with fellow renters, borrowers, and lenders who share your passion for exploring, trying new things, and building meaningful connections. Together, we can create a strong and supportive local network.',
                        style: TextStyle(
                            fontSize: size.width / 30, color: Colors.black87),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: (size.width / 100) * 80,
                      child: Text(
                        'Save Money:\nSay goodbye to expensive purchases and hello to smart savings! Renting from your neighbors allows you to access the items you need at a fraction of the cost. Whether it\'s camping gear for that weekend getaway or a power tool for a DIY project, our community has you covered. You can enjoy all the benefits without the hefty price tag by renting instead of purchasing.',
                        style: TextStyle(
                            fontSize: size.width / 30, color: Colors.black87),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: (size.width / 100) * 80,
                      child: Text(
                        'Try New Things:\nExperience the joy of trying out new hobbies, activities, and adventures without the commitment. With a vast array of items available for rent, you can easily explore your interests and discover hidden passions. From sporting equipment to musical instruments and everything in between, our platform is a gateway to endless opportunities for personal growth and exploration.',
                        style: TextStyle(
                            fontSize: size.width / 30, color: Colors.black87),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.circle,
                                color: Colors.white, size: size.width / 70),
                            SizedBox(
                              height: size.height / 25,
                            ),
                            Icon(Icons.circle,
                                size: size.width / 70, color: Colors.black87),
                            SizedBox(
                              height: size.height / 25,
                            ),
                            Icon(Icons.circle,
                                size: size.width / 70, color: Colors.black87),
                            SizedBox(
                              height: size.height / 25,
                            ),
                            Icon(Icons.circle,
                                size: size.width / 70, color: Colors.black87),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: (size.width / 100) * 80,
                              child: Text(
                                'Join The Local Rent today and:',
                                style: TextStyle(
                                    fontSize: size.width / 30,
                                    color: Colors.black87),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: (size.width / 100) * 80,
                              child: Text(
                                'Connect with your community',
                                style: TextStyle(
                                    fontSize: size.width / 30,
                                    color: Colors.black87),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: (size.width / 100) * 80,
                              child: Text(
                                'Save money on rentals',
                                style: TextStyle(
                                    fontSize: size.width / 30,
                                    color: Colors.black87),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: (size.width / 100) * 80,
                              child: Text(
                                'Try new things with ease',
                                style: TextStyle(
                                    fontSize: size.width / 30,
                                    color: Colors.black87),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: (size.width / 100) * 80,
                      child: Text(
                        'Ready to embark on a journey of shared experiences and endless possibilities? Sign up now and let The Local Rent be your gateway to a world of connections, savings, and unforgettable moments.',
                        style: TextStyle(
                            fontSize: size.width / 30, color: Colors.black87),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: (size.width / 100) * 80,
                      child: Text(
                        'Join Now',
                        style: TextStyle(
                            fontSize: size.width / 30, color: Colors.black87),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              }
              return Column(
                children: [
                  SizedBox(
                    width: (size.width / 100) * 80,
                    child: Text(
                      'Discover a world of possibilities in your neighborhood! Join The Local Rent community today and unlock a whole new way to connect, save money, and experience exciting adventures.',
                      style: TextStyle(
                          fontSize: size.width / 50, color: Colors.black87),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: (size.width / 100) * 80,
                    child: Text(
                      'Meet Your Neighbors:\nJoining The Local Rent opens the door to a vibrant community of like-minded individuals right in your neighborhood. Connect with fellow renters, borrowers, and lenders who share your passion for exploring, trying new things, and building meaningful connections. Together, we can create a strong and supportive local network.',
                      style: TextStyle(
                          fontSize: size.width / 50, color: Colors.black87),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: (size.width / 100) * 80,
                    child: Text(
                      'Save Money:\nSay goodbye to expensive purchases and hello to smart savings! Renting from your neighbors allows you to access the items you need at a fraction of the cost. Whether it\'s camping gear for that weekend getaway or a power tool for a DIY project, our community has you covered. You can enjoy all the benefits without the hefty price tag by renting instead of purchasing.',
                      style: TextStyle(
                          fontSize: size.width / 50, color: Colors.black87),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: (size.width / 100) * 80,
                    child: Text(
                      'Try New Things:\nExperience the joy of trying out new hobbies, activities, and adventures without the commitment. With a vast array of items available for rent, you can easily explore your interests and discover hidden passions. From sporting equipment to musical instruments and everything in between, our platform is a gateway to endless opportunities for personal growth and exploration.',
                      style: TextStyle(
                          fontSize: size.width / 50, color: Colors.black87),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: size.height / 25,
                          ),
                          const Icon(Icons.circle, color: Colors.black87),
                          SizedBox(
                            height: size.height / 25,
                          ),
                          const Icon(Icons.circle, color: Colors.black87),
                          SizedBox(
                            height: size.height / 25,
                          ),
                          const Icon(Icons.circle, color: Colors.black87),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: (size.width / 100) * 80,
                            child: Text(
                              'Join The Local Rent today and:',
                              style: TextStyle(
                                  fontSize: size.width / 50,
                                  color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: (size.width / 100) * 80,
                            child: Text(
                              'Connect with your community',
                              style: TextStyle(
                                  fontSize: size.width / 50,
                                  color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: (size.width / 100) * 80,
                            child: Text(
                              'Save money on rentals',
                              style: TextStyle(
                                  fontSize: size.width / 50,
                                  color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: (size.width / 100) * 80,
                            child: Text(
                              'Try new things with ease',
                              style: TextStyle(
                                  fontSize: size.width / 50,
                                  color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: (size.width / 100) * 80,
                    child: Text(
                      'Ready to embark on a journey of shared experiences and endless possibilities? Sign up now and let The Local Rent be your gateway to a world of connections, savings, and unforgettable moments.',
                      style: TextStyle(
                          fontSize: size.width / 50, color: Colors.black87),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: (size.width / 100) * 80,
                    child: Text(
                      'Join Now',
                      style: TextStyle(
                          fontSize: size.width / 50, color: Colors.black87),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            }),
            const SizedBox(
              height: 50,
            ),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 700) {
                return Column(
                  children: [
                    Image.asset(
                      'assets/img3.png',
                      height: size.width / 2,
                      width: size.width / 1,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Still on the fence ?',
                      style: TextStyle(
                          fontSize: size.width / 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: size.height / 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width / 15),
                      child: Row(
                        children: [
                          Text(
                            'What happens if my item is damaged or broken?',
                            style: TextStyle(
                                fontSize: size.width / 30,
                                color: Colors.black87),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: size.width / 20,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height / 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width / 15),
                      child: Row(
                        children: [
                          Text(
                            'What happens if my item is damaged or broken?',
                            style: TextStyle(
                                fontSize: size.width / 30,
                                color: Colors.black87),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: size.width / 20,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height / 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width / 15),
                      child: Row(
                        children: [
                          Text(
                            'What happens if my item is damaged or broken?',
                            style: TextStyle(
                                fontSize: size.width / 30,
                                color: Colors.black87),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: size.width / 20,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Image.asset(
                      'img_3.png',
                      height: size.width / 2,
                      width: size.width / 2,
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width / 40),
                        child: Column(
                          children: [
                            Text(
                              'Still on the fence ?',
                              style: TextStyle(
                                  fontSize: size.width / 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              height: size.height / 15,
                            ),
                            Row(
                              children: [
                                Text(
                                  'What happens if my item is damaged or broken?',
                                  style: TextStyle(
                                      fontSize: size.width / 60,
                                      color: Colors.black87),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  size: size.width / 60,
                                  color: Colors.amber,
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height / 15,
                            ),
                            Row(
                              children: [
                                Text(
                                  'What happens if my item is damaged or broken?',
                                  style: TextStyle(
                                      fontSize: size.width / 60,
                                      color: Colors.black87),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  size: size.width / 60,
                                  color: Colors.amber,
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height / 15,
                            ),
                            Row(
                              children: [
                                Text(
                                  'What happens if my item is damaged or broken?',
                                  style: TextStyle(
                                      fontSize: size.width / 60,
                                      color: Colors.black87),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  size: size.width / 60,
                                  color: Colors.amber,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
            const SizedBox(
              height: 40,
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
            ),
          ],
        ),
      ),
    );
  }
}
