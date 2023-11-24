import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:local_rent/mobileapp/search/search_rental.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  String? search;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/Logo.png',
          height: size.width / 4,
          width: size.width / 4,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.width / 18,
              width: double.infinity,
              color: Colors.black87,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: size.height / 20,
              width: size.width / 1.2,
              decoration: BoxDecoration(
                  color: Colors.cyan.shade800.withOpacity(0.7),
                  borderRadius: const BorderRadius.all(Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.search),
                    SizedBox(
                      height: size.height / 20,
                      width: size.width / 2,
                      child: TextField(
                        onChanged: (value) {
                          search = value;
                        },
                        decoration: const InputDecoration(
                          hintText: "Search Listing",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .transparent), // Set transparent border when not focused
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .transparent), // Set transparent border when focused
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const SearchRentalProduct());
                      },
                      child: CircleAvatar(
                        radius: size.height / 50,
                        backgroundColor: Colors.black,
                        child: Text(
                          'GO',
                          style: TextStyle(
                              color: Colors.cyan.shade800.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                              fontSize: size.height / 50),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height / 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width / 8),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: size.width / 7,
                                width: size.width / 7,
                                child: Image.asset(
                                  'assets/outdoor/img.png',
                                  fit: BoxFit.fill,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Small Grill',
                                  style: TextStyle(
                                      fontSize: size.width / 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Arlington, Tx',
                                  style: TextStyle(
                                    fontSize: size.width / 25,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '\$/30 / day',
                              style: TextStyle(
                                  color: Colors.amber.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.width / 5),
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  color: Colors.cyan.shade800.withOpacity(0.7),
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width / 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  }),
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
                      '+ Add Listing',
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
