import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:local_rent/choice.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String? img;
    String? rating;
    String? name;
    String? memberdate;
    String? txt;
    var size = MediaQuery.sizeOf(context);
    var padding = EdgeInsets.only(left: size.width / 7);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/Logo.png',
                height: size.width / 4,
                width: size.width / 4,
              ),
            ),
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: size.width / 2.3,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/bg.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      height: size.width / 18,
                      width: double.infinity,
                      color: Colors.black87,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height / 12),
                  child: Center(
                    child: CircleAvatar(
                      radius: size.width / 4.5,
                      backgroundImage: img != null
                          ? AssetImage(img)
                          : const AssetImage('assets/img_5.png'),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  rating ?? '4.5',
                  style: TextStyle(
                      fontSize: size.width / 15, color: Colors.black87),
                ),
                RatingBarIndicator(
                  itemSize: 20,
                  rating: 4.5,
                  itemBuilder: (ctx, index) => const Icon(
                    Icons.star,
                    color: Color(0xffE89A2B),
                  ),
                ),
              ],
            ),
            Padding(
              padding: padding,
              child: Row(
                children: [
                  Text(
                    name ?? 'Sarah James',
                    style: const TextStyle(color: Colors.black87),
                  ),
                  const Text(
                    ' | ',
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    memberdate ?? 'Member Since 2021',
                    style: const TextStyle(color: Colors.black87),
                  )
                ],
              ),
            ),
            Padding(
              padding: padding,
              child: Text(
                txt ?? 'Arlington, TX',
                style: const TextStyle(color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: size.height / 23,
                  width: size.width / 1.8,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.black),
                  child: Center(
                    child: Text(
                      'Rentals',
                      style: TextStyle(
                          fontSize: size.width / 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: size.height / 23,
                  width: size.width / 1.8,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.black),
                  child: Center(
                    child: Text(
                      'Find Items',
                      style: TextStyle(
                          fontSize: size.width / 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: size.height / 23,
                  width: size.width / 1.8,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.black),
                  child: Center(
                    child: Text(
                      'My Listings',
                      style: TextStyle(
                          fontSize: size.width / 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
