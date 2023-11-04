import 'package:flutter/material.dart';
import 'package:local_rent/about-us/about_page.dart';
import 'auth/signup_page.dart';
import 'auth/login_page.dart';
import 'main.dart';
import 'choice.dart';

class categorie extends StatefulWidget {
  const categorie({super.key});

  @override
  State<categorie> createState() => _categorieState();
}

class _categorieState extends State<categorie> {
  @override
  Widget build(BuildContext context) {
    MyApp product = MyApp();
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
            Container(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              width: double.infinity,
              color: Colors.black87,
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
            SizedBox(
              height: size.height / 8,
            ),
            Text(
              "All Categories",
              style: TextStyle(
                  fontSize: size.width / 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nomada Slab'),
            ),
            SizedBox(
              height: size.height / 10,
            ),
            Container(
              height: 15,
              width: double.infinity,
              color: Colors.black87,
            ),
            SizedBox(
              height: size.height / 8,
            ),
            Text(
              "Select Any One",
              style: TextStyle(
                  fontSize: size.width / 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nomada Slab'),
            ),
            SizedBox(
              height: size.height / 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Search Categories',
                            style: TextStyle(
                                fontSize: size.width / 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            color: Colors.amber,
                            height: 4,
                            width: size.width / 4.7,
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height / 30,
                      ),
                      const Text('Sporting Goods'),
                      SizedBox(
                        height: size.height / 30,
                      ),
                      const Text('Musical Instruments'),
                      SizedBox(
                        height: size.height / 30,
                      ),
                      const Text('Electronics'),
                      SizedBox(
                        height: size.height / 30,
                      ),
                      const Text('Clothing & Costumes'),
                      SizedBox(
                        height: size.height / 30,
                      ),
                      const Text('Baby & Toddler'),
                      SizedBox(
                        height: size.height / 30,
                      ),
                      const Text('Childrens Goods'),
                      SizedBox(
                        height: size.height / 30,
                      ),
                      const Text('Party & Event'),
                      SizedBox(
                        height: size.height / 30,
                      ),
                      const Text('Furniture'),
                      SizedBox(
                        height: size.height / 30,
                      ),
                      const Text('Vehicles'),
                      SizedBox(
                        height: size.height / 30,
                      ),
                      const Text('Real Estate'),
                      SizedBox(
                        height: size.height / 30,
                      ),
                      const Text('Tools & Equipment'),
                    ],
                  ),
                  SizedBox(
                    width: (size.width / 100) * 4,
                  ),
                  Expanded(
                    child: LayoutBuilder(builder: (context, constraints) {
                      if (constraints.maxWidth > 500) {
                        return GridView.builder(
                            shrinkWrap: true,
                            itemCount: product.products.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemBuilder: (ctx, index) {
                              return GestureDetector(
                                child: Column(
                                  children: <Widget>[
                                    Flexible(
                                      child: SizedBox(
                                          height: size.width / 3,
                                          width: size.width / 7,
                                          child: Image.asset(
                                            'assets${product.products[index].image}'
                                                .toString(),
                                            fit: BoxFit.fill,
                                          )),
                                    ),
                                    Flexible(
                                      child: Text(
                                        product.products[index].name.toString(),
                                        style: TextStyle(
                                            color: Colors.yellow.shade800,
                                            fontSize: size.width / 60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChoicePage(
                                                tname: product
                                                    .products[index].name
                                                    .toString(),
                                              )));
                                },
                              );
                            });
                      }

                      return GridView.builder(
                          shrinkWrap: true,
                          itemCount: product.products.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 7, crossAxisCount: 2),
                          itemBuilder: (ctx, index) {
                            final imageSize = size.width / 5;
                            return GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Image.asset(
                                  'assets/${product.products[index].image}',
                                  fit: BoxFit.cover,
                                  width: imageSize,
                                  height: imageSize,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChoicePage(
                                              tname: product
                                                  .products[index].name
                                                  .toString(),
                                            )));
                              },
                            );
                          });
                    }),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
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
