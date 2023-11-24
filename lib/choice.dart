import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:local_rent/about-us/about_page.dart';

import 'auth/signup_page.dart';
import 'auth/login_page.dart';
import 'package:local_rent/all_products_lists.dart';
import 'detail.dart';

class ChoicePage extends StatefulWidget {
  const ChoicePage({super.key, required this.tname});

  final String tname;

  @override
  State<ChoicePage> createState() => _choiceState();
}

class _choiceState extends State<ChoicePage> {
  List<int> ratings = List.filled(12, 0);
  Products product = Products('', '', '', '', '');
  List<Products>? outdoorList;
  List<Products>? toolsList;
  List<Products>? childrenList;
  List<Products>? sports;
  List<Products>? vehicle;
  List<Products>? furniture;
  List<Products>? realestate;
  List<Products>? baby;
  List<Products>? cloth;
  List<Products>? electronics;
  List<Products>? music;
  List<Products>? event;
  List<Products> newdata = [];
  @override
  void initState() {
    super.initState();
    outdoorList = product.getOutdoorList();
    toolsList = product.gettoolslist();
  }

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
          mainAxisAlignment: MainAxisAlignment.center,
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
                                    builder: (_) => const about()));
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
            Container(
              height: 15,
              width: double.infinity,
              color: Colors.black87,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Book your rental now",
              style: TextStyle(
                  fontSize: size.width / 23,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nomada Slab'),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              width: double.infinity,
              color: Colors.cyan.shade600,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                        margin: EdgeInsets.only(
                            top: size.height / 20,
                            bottom: size.height / 20,
                            left: 20,
                            right: 20),
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 2,
                              child: TextField(
                                decoration: const InputDecoration(
                                    hintText: 'Location',
                                    enabledBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    prefixIcon: Icon(Icons.location_on),
                                    fillColor: Colors.transparent),
                                controller: TextEditingController(),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.black,
                            ),
                            Flexible(
                              flex: 2,
                              child: TextField(
                                decoration: const InputDecoration(
                                    hintText: 'Search Items',
                                    enabledBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    prefixIcon: Icon(Icons.search_sharp),
                                    fillColor: Colors.transparent),
                                controller: TextEditingController(),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.black,
                            ),
                            Flexible(
                              flex: 2,
                              child: DropdownButtonFormField(
                                isExpanded: true,
                                padding: EdgeInsets.zero,
                                icon: const Icon(Icons.arrow_drop_down),
                                hint: const Text(
                                  'Search categories',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                items: const [
                                  DropdownMenuItem(child: Text('Resturant')),
                                ],
                                decoration: const InputDecoration(
                                    enabled: true,
                                    contentPadding:
                                        EdgeInsets.only(top: 0, bottom: 0),
                                    enabledBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    fillColor: Colors.transparent),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              widget.tname,
              style: TextStyle(
                  fontSize: size.width / 23,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nomada Slab'),
            ),
            const SizedBox(
              height: 40,
            ),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                log(widget.tname);
                return Padding(
                  padding: EdgeInsets.only(left: size.width / 6),
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: widget.tname == 'Outdoor / Recreation'
                          ? outdoorList?.length
                          : 0,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 30,
                              mainAxisSpacing: 20,
                              crossAxisCount: 2),
                      itemBuilder: (ctx, index) {
                        final imageSize = size.width / 5;
                        log(outdoorList![index].image);
                        return GestureDetector(
                          child: SizedBox(
                            width: imageSize,
                            height: imageSize, // Adjust the width as needed
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/${outdoorList![index].image}',

                                  fit: BoxFit.cover,
                                  width: imageSize,
                                  height: imageSize, // Set the height as needed
                                ),
                                Text(
                                  outdoorList![index].pname,
                                  style: TextStyle(
                                    fontSize: size.width / 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  outdoorList![index].text,
                                  style: TextStyle(
                                    fontSize: size.width / 30,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      outdoorList![index].rent,
                                      style: TextStyle(
                                        fontSize: size.width / 30,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                    RatingBar(
                                      rating: ratings[index],
                                      onRatingChanged: (newRating) {
                                        setState(() {
                                          ratings[index] = newRating.round();
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                        img: outdoorList![index].image,
                                        name: outdoorList![index].pname,
                                        text: outdoorList![index].text,
                                        rent: outdoorList![index].rent,
                                        detal: outdoorList![index].detail)));
                          },
                        );
                      }),
                );
              }
              return Container();
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

class RatingBar extends StatefulWidget {
  final int rating;
  final ValueChanged<double> onRatingChanged;

  const RatingBar(
      {super.key, required this.rating, required this.onRatingChanged});

  @override
  _RatingBarState createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  double currentRating = 0;

  @override
  void initState() {
    super.initState();
    currentRating = widget.rating.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            currentRating = index + 1.0;
            widget.onRatingChanged(currentRating);
          },
          child: Icon(
            index < currentRating ? Icons.star : Icons.star_border,
            color: Colors.orangeAccent,
            size: size.width / 40,
          ),
        );
      }),
    );
  }
}
