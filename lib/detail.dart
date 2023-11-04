import 'package:flutter/material.dart';
import 'package:local_rent/about-us/about_page.dart';
import 'package:local_rent/auth/login_page.dart';
import 'package:local_rent/auth/signup_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(
      {super.key,
      required this.img,
      required this.name,
      required this.text,
      required this.rent,
      required this.detal});

  final String img;
  final String name;
  final String text;
  final String rent;
  final String detal;

  @override
  State<DetailsScreen> createState() => _detailState();
}

class _detailState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    int currentPage = 0;
    List<String> images = [
      widget.img,
      widget.img,
      widget.img,
      widget.img,
      widget.img,
    ];
    var rating = 0;
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                color: Colors.white,
                child: Row(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: size.width / 4,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => const about()));
                                },
                                child: Text(
                                  'ABOUT US',
                                  style: buttonstyle,
                                )),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const signup()));
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
                                    builder: (_) => const about()));
                              },
                              child: Text(
                                'ABOUT US',
                                style: buttonstyle1,
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const signup()));
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
                height: size.height / 20,
              ),
              Padding(
                padding: EdgeInsets.all(size.width / 20),
                child: LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth < 600) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/${widget.img}',
                            height: size.width / 2,
                            width: size.width / 2,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          widget.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.width / 20),
                        ),
                        Text(
                          widget.text,
                          style: TextStyle(fontSize: size.width / 25),
                        ),
                        SizedBox(
                          height: size.height / 20,
                        ),
                        SizedBox(
                            width: size.width / 1.5,
                            child: Text(
                              widget.detal,
                              style: TextStyle(fontSize: size.width / 30),
                            )),
                        SizedBox(
                          height: size.height / 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.width / 10),
                          child: Row(
                            children: [
                              Text(
                                widget.rent,
                                style: TextStyle(fontSize: size.width / 20),
                              ),
                              RatingBar.builder(
                                initialRating: 0,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: size.width / 60,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height / 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                maximumSize: const Size(260, 60),
                                minimumSize: const Size(260, 60),
                                padding: const EdgeInsets.all(20),
                                backgroundColor:
                                    Colors.cyanAccent.withOpacity(0.4)),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.white,
                                    title: const Text("Confirm Booking"),
                                    content: const Text(
                                        "Are you sure you want to confirm this Booking?"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("Cancel"),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Close the dialog
                                          Navigator.of(context).pop();
                                          const snackBar = SnackBar(
                                            content: Text("Booked"),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        },
                                        child: const Text("Confirm"),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Book Now',
                                    style: TextStyle(color: Colors.white)),
                                Icon(
                                  Icons.arrow_right,
                                  size: 25,
                                  color: Colors.white,
                                )
                              ],
                            )),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (currentPage > 0) {
                                  pageController.previousPage(
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              },
                              child: const Icon(Icons.arrow_left_sharp),
                            ),
                            SizedBox(
                              height: size.width / 2,
                              width: size.width / 2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: PageView.builder(
                                  controller: pageController,
                                  itemCount: images.length,
                                  onPageChanged: (int page) {
                                    setState(() {
                                      currentPage = page;
                                    });
                                  },
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/${images[index]}',
                                          fit: BoxFit.fill,
                                          height: size.width / 4.5,
                                          width: size.width / 4.5,
                                        ),
                                        SizedBox(
                                          width: size.width / 40,
                                        ),
                                        Image.asset('assets/${images[index]}',
                                            fit: BoxFit.fill,
                                            height: size.width / 4.5,
                                            width: size.width / 4.5),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (currentPage < images.length) {
                                  pageController.nextPage(
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              },
                              child: const Icon(Icons.arrow_right_sharp),
                            ),
                          ],
                        ),
                      ],
                    );
                  }
                  return Row(
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/${widget.img}',
                              height: size.width / 4,
                              width: size.width / 4,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (currentPage > 0) {
                                    pageController.previousPage(
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeInOut,
                                    );
                                  }
                                },
                                child: const Icon(Icons.arrow_left_sharp),
                              ),
                              SizedBox(
                                height: size.width / 3.5,
                                width: size.width / 3.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: PageView.builder(
                                    controller: pageController,
                                    itemCount: images.length,
                                    onPageChanged: (int page) {
                                      setState(() {
                                        currentPage = page;
                                      });
                                    },
                                    itemBuilder: (context, index) {
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/${images[index]}',
                                            fit: BoxFit.fill,
                                            height: size.width / 8,
                                            width: size.width / 8,
                                          ),
                                          SizedBox(
                                            width: size.width / 40,
                                          ),
                                          Image.asset(
                                            'assets/${images[index]}',
                                            fit: BoxFit.fill,
                                            height: size.width / 8,
                                            width: size.width / 8,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (currentPage < images.length - 1) {
                                    pageController.nextPage(
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeInOut,
                                    );
                                  }
                                },
                                child: const Icon(Icons.arrow_right_sharp),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width / 30),
                          ),
                          Text(
                            widget.text,
                            style: TextStyle(fontSize: size.width / 35),
                          ),
                          SizedBox(
                            height: size.height / 20,
                          ),
                          SizedBox(
                              width: size.width / 2.5,
                              child: Text(
                                widget.detal,
                                style: TextStyle(fontSize: size.width / 70),
                              )),
                          SizedBox(
                            height: size.height / 20,
                          ),
                          Row(
                            children: [
                              Text(
                                widget.rent,
                                style: TextStyle(fontSize: size.width / 35),
                              ),
                              RatingBar.builder(
                                initialRating: 0,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: size.height / 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  maximumSize: const Size(260, 60),
                                  minimumSize: const Size(260, 60),
                                  padding: const EdgeInsets.all(20),
                                  backgroundColor:
                                      Colors.cyanAccent.withOpacity(0.4)),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: const Text("Confirm Booking"),
                                      content: const Text(
                                          "Are you sure you want to confirm this Booking?"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("Cancel"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            // Close the dialog
                                            Navigator.of(context).pop();
                                            const snackBar = SnackBar(
                                              content: Text("Booked"),
                                            );
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(snackBar);
                                          },
                                          child: const Text("Confirm"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Book Now',
                                      style: TextStyle(color: Colors.white)),
                                  Icon(
                                    Icons.arrow_right,
                                    size: 25,
                                    color: Colors.white,
                                  )
                                ],
                              )),
                        ],
                      )
                    ],
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width / 10),
                child: Text(
                  "Rented out by",
                  style: TextStyle(
                      fontSize: size.width / 35, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: size.width / 7,
                      backgroundImage: const AssetImage('assets/img2.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        size: size.width / 70,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(
                      width: size.width / 15,
                    ),
                    Text('Sarah James | Member since 2021',
                        style: TextStyle(fontSize: size.width / 30)),
                    Text(widget.text,
                        style: TextStyle(fontSize: size.width / 30)),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Text(
                        'View Seller Profile',
                        style: TextStyle(
                            fontSize: size.width / 30,
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 20,
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
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Become a Renter',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Find an Item',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Become an Affiliate',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
            ]),
      ),
    );
  }
}
