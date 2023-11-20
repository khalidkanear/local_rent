import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_rent/about-us/about_page.dart';
import 'package:local_rent/auth/login_page.dart';
import 'package:local_rent/choice.dart';
import 'package:local_rent/firebase_options.dart';
import 'package:local_rent/mobileapp/auth/signup.dart';
import 'package:local_rent/products/product_model.dart';
import 'listen.dart';
import 'auth/signup_page.dart';
import 'categories.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Products> products = [
    Products(name: 'Outdoor / Recreation', image: 'outdoor.png'),
    Products(name: 'Tools & Equipments', image: 'tools.png'),
    Products(name: 'Children Goods', image: 'children.png'),
    Products(name: 'Sports & Recreation', image: 'sports.png'),
    Products(name: 'Vehicles', image: 'vehicles.png'),
    Products(name: 'Furniture', image: 'furniture.png'),
    Products(name: 'Real Estate', image: 'estate.png'),
    Products(name: 'Baby Toddler', image: 'babytodler.png'),
    Products(name: 'Clothing & Costumes', image: 'cloth.png'),
    Products(name: 'Electronics', image: 'electric.png'),
    Products(name: 'Musical Instruments', image: 'musicinstruments.png'),
    Products(name: 'Party Events', image: 'party.png'),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Local Rent',
      theme: ThemeData(
          textTheme: const TextTheme(),
          textButtonTheme: const TextButtonThemeData(style: ButtonStyle()),
          primaryColor: Colors.black,
          primarySwatch: const MaterialColor(0xFF000000, {
            50: Colors.black,
            100: Colors.black,
            200: Colors.black,
            300: Colors.black,
            400: Colors.black,
            500: Colors.black,
            600: Colors.black,
            700: Colors.black,
            800: Colors.black,
            900: Colors.black,
          }),
          useMaterial3: true,
          fontFamily: 'Nomand Slab'),
      home: const SignUpPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

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
                  Text(
                    'The community-powered rental platform',
                    style: TextStyle(
                        fontSize: size.width / 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Nomada Slab'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                        margin: EdgeInsets.only(
                            top: size.height / 30,
                            bottom: size.height / 20,
                            left: 0,
                            right: 0),
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
                                    prefixIcon:
                                        Icon(Icons.location_on_outlined),
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
            //Step For Lend or Rent
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 900) {
                if (size.height < 800 && size.height > 600) {
                  return Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: (size.width / 100) * 50),
                        child: Container(
                          height: size.height * 1.5,
                          width: size.width / 2,
                          color: Colors.cyanAccent.withOpacity(0.3),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'How It Works',
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontFamily: 'Nomand Slab',
                                      fontWeight: FontWeight.bold,
                                      leadingDistribution:
                                          TextLeadingDistribution.proportional),
                                ),
                                SizedBox(
                                  height: size.height / 20,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Rent',
                                          style: TextStyle(
                                              fontSize: size.width / 26),
                                        ),
                                        Container(
                                          height: 2,
                                          width: 80,
                                          color: Colors.amber,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: size.width / 40,
                                    ),
                                    const Text('or'),
                                    SizedBox(
                                      width: size.width / 40,
                                    ),
                                    Text(
                                      'Lend',
                                      style: TextStyle(
                                          fontSize: size.width / 26,
                                          color: Colors.amber),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width / 8),
                                  child: Column(
                                    children: [
                                      const Text(
                                        '1',
                                        style: TextStyle(
                                            fontSize: 60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Find the items you want to rent. Either locally or when your out of town.',
                                        style: buttonstyle,
                                        maxLines: 3,
                                      ),
                                      const Text(
                                        '2',
                                        style: TextStyle(
                                            fontSize: 60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Set your rental time details and book the item.',
                                        style: buttonstyle,
                                        maxLines: 3,
                                      ),
                                      const Text(
                                        '3',
                                        style: TextStyle(
                                            fontSize: 60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Get owner approval and details to pick up your rental',
                                        style: buttonstyle,
                                        maxLines: 3,
                                      ),
                                      const Text(
                                        '4',
                                        style: TextStyle(
                                            fontSize: 60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Enjoy your item and return at the scheduled return date.',
                                        style: buttonstyle,
                                        maxLines: 3,
                                      ),
                                      SizedBox(
                                        height: size.height / 60,
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              maximumSize: Size(size.width, 70),
                                              minimumSize: Size(size.width, 70),
                                              padding: const EdgeInsets.all(20),
                                              backgroundColor:
                                                  Colors.yellow.shade800),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const categorie()));
                                          },
                                          child: Text(
                                            'Rent Now',
                                            style: buttonstyle.copyWith(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(right: (size.width / 100) * 50),
                        child: Container(
                          height: size.height * 1.5,
                          color: Colors.cyan,
                          width: size.width / 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: (size.width / 100) * 5),
                        child: SizedBox(
                          height: size.height * 0.9,
                          width: size.width / 2,
                          child: Image.asset(
                            'assets/preview.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  );
                } else if (size.height < 600) {
                  return Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: (size.width / 100) * 50),
                        child: Container(
                          height: size.height * 2.2,
                          width: size.width / 2,
                          color: Colors.cyanAccent.withOpacity(0.3),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'How It Works',
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontFamily: 'Nomand Slab',
                                      fontWeight: FontWeight.bold,
                                      leadingDistribution:
                                          TextLeadingDistribution.proportional),
                                ),
                                SizedBox(
                                  height: size.height / 20,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Rent',
                                          style: TextStyle(
                                              fontSize: size.width / 26),
                                        ),
                                        Container(
                                          height: 2,
                                          width: 80,
                                          color: Colors.amber,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: size.width / 40,
                                    ),
                                    const Text('or'),
                                    SizedBox(
                                      width: size.width / 40,
                                    ),
                                    Text(
                                      'Lend',
                                      style: TextStyle(
                                          fontSize: size.width / 26,
                                          color: Colors.amber),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width / 8),
                                  child: Column(
                                    children: [
                                      const Text(
                                        '1',
                                        style: TextStyle(
                                            fontSize: 60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Find the items you want to rent. Either locally or when your out of town.',
                                        style: buttonstyle,
                                        maxLines: 3,
                                      ),
                                      const Text(
                                        '2',
                                        style: TextStyle(
                                            fontSize: 60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Set your rental time details and book the item.',
                                        style: buttonstyle,
                                        maxLines: 3,
                                      ),
                                      const Text(
                                        '3',
                                        style: TextStyle(
                                            fontSize: 60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Get owner approval and details to pick up your rental',
                                        style: buttonstyle,
                                        maxLines: 3,
                                      ),
                                      const Text(
                                        '4',
                                        style: TextStyle(
                                            fontSize: 60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Enjoy your item and return at the scheduled return date.',
                                        style: buttonstyle,
                                        maxLines: 3,
                                      ),
                                      SizedBox(
                                        height: size.height / 60,
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              maximumSize: Size(size.width, 70),
                                              minimumSize: Size(size.width, 70),
                                              padding: const EdgeInsets.all(20),
                                              backgroundColor:
                                                  Colors.yellow.shade800),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const categorie()));
                                          },
                                          child: Text(
                                            'Rent Now',
                                            style: buttonstyle.copyWith(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(right: (size.width / 100) * 50),
                        child: Container(
                          height: size.height * 2.2,
                          color: Colors.cyan,
                          width: size.width / 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: (size.width / 100) * 5,
                            top: size.height * 0.8),
                        child: SizedBox(
                          height: size.height * 0.9,
                          width: size.width / 2,
                          child: Image.asset(
                            'assets/preview.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  );
                }
                return Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: (size.width / 100) * 50),
                      child: Container(
                        height: size.height * 1.1,
                        width: size.width / 2,
                        color: Colors.cyanAccent.withOpacity(0.3),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'How It Works',
                                style: TextStyle(
                                    fontSize: size.width / 20,
                                    fontFamily: 'Nomand Slab',
                                    fontWeight: FontWeight.bold,
                                    leadingDistribution:
                                        TextLeadingDistribution.proportional),
                              ),
                              SizedBox(
                                height: size.height / 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Rent',
                                        style: TextStyle(
                                            fontSize: size.width / 26),
                                      ),
                                      Container(
                                        height: 2,
                                        width: 80,
                                        color: Colors.amber,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: size.width / 40,
                                  ),
                                  const Text('or'),
                                  SizedBox(
                                    width: size.width / 40,
                                  ),
                                  Text(
                                    'Lend',
                                    style: TextStyle(
                                        fontSize: size.width / 26,
                                        color: Colors.amber),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width / 8),
                                child: Column(
                                  children: [
                                    const Text(
                                      '1',
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Find the items you want to rent. Either locally or when your out of town.',
                                      style: buttonstyle,
                                      maxLines: 3,
                                    ),
                                    const Text(
                                      '2',
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Set your rental time details and book the item.',
                                      style: buttonstyle,
                                      maxLines: 3,
                                    ),
                                    const Text(
                                      '3',
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Get owner approval and details to pick up your rental',
                                      style: buttonstyle,
                                      maxLines: 3,
                                    ),
                                    const Text(
                                      '4',
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Enjoy your item and return at the scheduled return date.',
                                      style: buttonstyle,
                                      maxLines: 3,
                                    ),
                                    SizedBox(
                                      height: size.height / 60,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            maximumSize: Size(size.width, 70),
                                            minimumSize: Size(size.width, 70),
                                            padding: const EdgeInsets.all(20),
                                            backgroundColor:
                                                Colors.yellow.shade800),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const categorie()));
                                        },
                                        child: Text(
                                          'Rent Now',
                                          style: buttonstyle.copyWith(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: (size.width / 100) * 50),
                      child: Container(
                        height: size.height * 1.1,
                        color: Colors.cyan,
                        width: size.width / 2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: (size.width / 100) * 5),
                      child: SizedBox(
                        height: size.height * 0.9,
                        width: size.width / 2,
                        child: Image.asset(
                          'assets/preview.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                );
              } else if (constraints.maxWidth < 900 &&
                  constraints.maxWidth > 600) {
                return Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: (size.width / 100) * 50),
                      child: Container(
                        height: size.height,
                        width: size.width / 2,
                        color: Colors.cyanAccent.withOpacity(0.3),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'How It Works',
                                style: TextStyle(
                                    fontSize: size.height / 20,
                                    fontFamily: 'Nomand Slab',
                                    fontWeight: FontWeight.bold,
                                    leadingDistribution:
                                        TextLeadingDistribution.proportional),
                              ),
                              SizedBox(
                                height: size.height / 30,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Rent',
                                        style: TextStyle(
                                            fontSize: size.width / 26),
                                      ),
                                      Container(
                                        height: 2,
                                        width: 80,
                                        color: Colors.amber,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: size.width / 40,
                                  ),
                                  const Text('or'),
                                  SizedBox(
                                    width: size.width / 40,
                                  ),
                                  Text(
                                    'Lend',
                                    style: TextStyle(
                                        fontSize: size.width / 26,
                                        color: Colors.amber),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: size.width / 3,
                                child: Column(
                                  children: [
                                    Text(
                                      '1',
                                      style: TextStyle(
                                          fontSize: size.height / 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Find the items you want to rent. Either locally or when your out of town.',
                                      style: buttonstyle,
                                      maxLines: 3,
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          fontSize: size.height / 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Set your rental time details and book the item.',
                                      style: buttonstyle,
                                      maxLines: 3,
                                    ),
                                    Text(
                                      '3',
                                      style: TextStyle(
                                          fontSize: size.height / 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Get owner approval and details to pick up your rental',
                                      style: buttonstyle,
                                      maxLines: 3,
                                    ),
                                    Text(
                                      '4',
                                      style: TextStyle(
                                          fontSize: size.height / 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Enjoy your item and return at the scheduled return date.',
                                      style: buttonstyle,
                                      maxLines: 3,
                                    ),
                                    SizedBox(
                                      height: size.height / 60,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            maximumSize:
                                                Size(size.width / 2, 60),
                                            minimumSize:
                                                Size(size.width / 2, 60),
                                            padding: const EdgeInsets.all(20),
                                            backgroundColor:
                                                Colors.yellow.shade800),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const categorie()));
                                        },
                                        child: Text(
                                          'Rent Now',
                                          style: buttonstyle.copyWith(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: (size.width / 100) * 50),
                      child: Container(
                        height: size.height * 1,
                        color: Colors.cyan,
                        width: size.width / 2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: (size.width / 100) * 5),
                      child: SizedBox(
                        height: size.height * 0.6,
                        width: size.width / 2,
                        child: Image.asset(
                          'assets/preview.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                );
              }
              return Stack(
                children: [
                  Container(
                    height: size.height * 1.5,
                    color: Colors.cyanAccent.withOpacity(0.3),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0, top: 400),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'How It Works',
                            style: TextStyle(
                                fontSize: size.height / 20,
                                fontFamily: 'Nomand Slab',
                                fontWeight: FontWeight.bold,
                                leadingDistribution:
                                    TextLeadingDistribution.proportional),
                          ),
                          SizedBox(
                            height: size.height / 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Rent',
                                    style:
                                        TextStyle(fontSize: size.height / 30),
                                  ),
                                  Container(
                                    height: 2,
                                    width: 80,
                                    color: Colors.amber,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: size.width / 40,
                              ),
                              const Text('or'),
                              SizedBox(
                                width: size.width / 40,
                              ),
                              Text(
                                'Lend',
                                style: TextStyle(
                                    fontSize: size.height / 30,
                                    color: Colors.amber),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width / 8),
                            child: Column(
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: size.height / 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Find the items you want to rent. Either locally or when your out of town.',
                                  style: buttonstyle1,
                                  maxLines: 3,
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: size.height / 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Set your rental time details and book the item.',
                                  style: buttonstyle1,
                                  maxLines: 3,
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: size.height / 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Get owner approval and details to pick up your rental',
                                  style: buttonstyle1,
                                  maxLines: 3,
                                ),
                                Text(
                                  '4',
                                  style: TextStyle(
                                      fontSize: size.height / 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Enjoy your item and return at the scheduled return date.',
                                  style: buttonstyle1,
                                  maxLines: 3,
                                ),
                                SizedBox(
                                  height: size.height / 60,
                                ),
                                SizedBox(
                                  width: (size.width / 100 * 50),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.all(20),
                                          backgroundColor:
                                              Colors.yellow.shade800),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const categorie()));
                                      },
                                      child: Text(
                                        'Rent Now',
                                        style: buttonstyle1.copyWith(
                                            color: Colors.white, fontSize: 15),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/preview.png',
                      height: 400,
                    ),
                  ),
                ],
              );
            }),
            SizedBox(
              height: size.height / 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text(
                    'Endless items to RENT for LESS',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  const Text(
                    'Discover our most popular categories',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan),
                  ),
                  SizedBox(
                    height: size.height / 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) => GridView.builder(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            shrinkWrap: true,
                            itemCount: product.products.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 20,
                                    crossAxisCount:
                                        constraints.maxWidth > 600 ? 3 : 2),
                            itemBuilder: (ctx, index) {
                              if (constraints.maxWidth > 600 &&
                                  constraints.maxWidth < 900) {
                                final imageSize = size.width / 8;
                                return SizedBox(
                                  height: imageSize,
                                  width: imageSize,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => ChoicePage(
                                                  tname: product
                                                      .products[index].name
                                                      .toString())));
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/${product.products[index].image}'
                                              .toString(),
                                          fit: BoxFit.fill,
                                          height: imageSize,
                                          width: imageSize,
                                        ),
                                        Flexible(
                                          child: Text(
                                            product.products[index].name
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.yellow.shade800,
                                                fontSize: size.width / 60,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              } else if (constraints.maxWidth < 600) {
                                final imageSize = size.width / 6;
                                return Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => ChoicePage(
                                                    tname: product
                                                        .products[index].name
                                                        .toString()))),
                                        child: Image.asset(
                                          'assets/${product.products[index].image}',
                                          fit: BoxFit.cover,
                                          height: imageSize,
                                          width: imageSize,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                              return Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      "assets/${product.products[index].image}"
                                          .toString(),
                                      fit: BoxFit.cover,
                                      height: size.height / 4,
                                      width: size.width / 5,
                                    ),
                                  ),
                                  Text(
                                    product.products[index].name.toString(),
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.yellow.shade800),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: (size.height / 100) * 15,
              color: Colors.cyanAccent.withOpacity(0.4),
              child: Center(
                child: Text(
                  'Wait... Your stuff isn\u0027t making you money???',
                  style: TextStyle(
                      fontSize: size.width / 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            LayoutBuilder(builder: (context, constrains) {
              if (constrains.maxWidth < 600) {
                return Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: (size.height / 100) * 25,
                      child: Image.asset(
                        'assets/disturb.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
                                  builder: (context) => const listen()));
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Text(
                                'Join Now',
                                style:
                                    buttonstyle1.copyWith(color: Colors.white),
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
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.cyanAccent.withOpacity(0.4),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  "Become a Local Lender",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                              const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "'Let your stuff make you \$\$\$\nwhile you sleep!'",
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                              )),
                              const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  "3 Easy Steps",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  width: 60.0,
                                  // Adjust the width and height as needed
                                  height: 60.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors
                                        .white, // Set your desired background color
                                  ),
                                  child: const Center(
                                      child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                ),
                              ),
                              const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "List Items for Rent",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              )),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  width: 60.0,
                                  // Adjust the width and height as needed
                                  height: 60.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors
                                        .white, // Set your desired background color
                                  ),
                                  child: const Center(
                                      child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                ),
                              ),
                              const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Approve & Set Pickup Date",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              )),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  width: 60.0,
                                  // Adjust the width and height as needed
                                  height: 60.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors
                                        .white, // Set your desired background color
                                  ),
                                  child: const Center(
                                      child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                ),
                              ),
                              const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Get Paid While You Sleep",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              )),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                );
              } else if (constrains.maxWidth > 600 &&
                  constrains.maxWidth < 900) {
                return Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: (size.height / 100) * 40,
                      child: Image.asset(
                        'assets/disturb.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            maximumSize: const Size(360, 60),
                            minimumSize: const Size(360, 60),
                            padding: const EdgeInsets.all(20),
                            backgroundColor:
                                Colors.cyanAccent.withOpacity(0.4)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const listen()));
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Text(
                                'Join Now',
                                style:
                                    buttonstyle1.copyWith(color: Colors.white),
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
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.cyanAccent.withOpacity(0.4),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  right: (size.width / 100) * 55),
                              child: Column(
                                children: [
                                  const Center(
                                      child: Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child: Text(
                                      "Become a Local Lender",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                                  const Center(
                                      child: Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "'Let your stuff make you \$\$\$\nwhile you sleep!'",
                                      style: TextStyle(
                                        fontSize: 25,
                                      ),
                                    ),
                                  )),
                                  const Center(
                                      child: Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child: Text(
                                      "3 Easy Steps",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Container(
                                      width: 60.0,
                                      // Adjust the width and height as needed
                                      height: 60.0,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors
                                            .white, // Set your desired background color
                                      ),
                                      child: const Center(
                                          child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                    ),
                                  ),
                                  const Center(
                                      child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      "List Items for Rent",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Container(
                                      width: 60.0,
                                      // Adjust the width and height as needed
                                      height: 60.0,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors
                                            .white, // Set your desired background color
                                      ),
                                      child: const Center(
                                          child: Text(
                                        '2',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                    ),
                                  ),
                                  const Center(
                                      child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      "Approve & Set Pickup Date",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Container(
                                      width: 60.0,
                                      // Adjust the width and height as needed
                                      height: 60.0,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors
                                            .white, // Set your desired background color
                                      ),
                                      child: const Center(
                                          child: Text(
                                        '2',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                    ),
                                  ),
                                  const Center(
                                      child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      "Get Paid While You Sleep",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 40, left: (size.width / 100) * 40),
                              child: SizedBox(
                                height: (size.height / 100) * 80,
                                child: Image.asset(
                                  'assets/h1.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              }
              return Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: (size.height / 100) * 80,
                    child: Image.asset(
                      'assets/disturb.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                                builder: (context) => const listen()));
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 110),
                            child: Text(
                              'Join Now',
                              style: TextStyle(
                                  fontSize: size.width / 80,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: size.width / 70,
                            color: Colors.white,
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.cyanAccent.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Stack(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(right: (size.width / 100) * 60),
                            child: Column(
                              children: [
                                const Center(
                                    child: Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Text(
                                    "Become a Local Lender",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                                const Center(
                                    child: Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "'Let your stuff make you \$\$\$\nwhile you sleep!'",
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                )),
                                const Center(
                                    child: Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Text(
                                    "3 Easy Steps",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(
                                    width: 60.0,
                                    // Adjust the width and height as needed
                                    height: 60.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors
                                          .white, // Set your desired background color
                                    ),
                                    child: const Center(
                                        child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                  ),
                                ),
                                const Center(
                                    child: Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "List Items for Rent",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(
                                    width: 60.0,
                                    // Adjust the width and height as needed
                                    height: 60.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors
                                          .white, // Set your desired background color
                                    ),
                                    child: const Center(
                                        child: Text(
                                      '2',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                  ),
                                ),
                                const Center(
                                    child: Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Approve & Set Pickup Date",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(
                                    width: 60.0,
                                    // Adjust the width and height as needed
                                    height: 60.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors
                                          .white, // Set your desired background color
                                    ),
                                    child: const Center(
                                        child: Text(
                                      '2',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                  ),
                                ),
                                const Center(
                                    child: Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Get Paid While You Sleep",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                )),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 40, left: (size.width / 100) * 50),
                            child: SizedBox(
                              height: (size.height / 100) * 80,
                              child: Image.asset(
                                'assets/h1.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Ready to Rent items and meet your neighbors?',
              style: TextStyle(
                  fontSize: size.width / 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nomada Slab'),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
