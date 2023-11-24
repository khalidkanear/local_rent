import 'package:flutter/material.dart';

import 'package:local_rent/main.dart';
import 'package:local_rent/mobileapp/subcategory/subcategory_page.dart';

class AllCategoriesPage extends StatelessWidget {
  AllCategoriesPage({super.key});
  MyApp product = MyApp();
  @override
  final _drawerKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: _drawerKey,
      endDrawer: const Drawer(),
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              _drawerKey.currentState?.openEndDrawer();
            },
            child: const Icon(
              Icons.menu,
              size: 30,
            ),
          )
        ],
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          padding: const EdgeInsets.only(top: 30, left: 30),
          color: const Color(0xffa7ecfd),
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/Logo.png',
                height: 50,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
      body: Column(children: [
        Container(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 8),
          decoration: const BoxDecoration(color: Colors.black),
          child: const Row(
            children: [
              Flexible(
                  child: TextField(
                cursorHeight: 15,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                  ),
                  hintText: 'Location',
                  hintStyle: TextStyle(fontSize: 14),
                  prefixIcon: Icon(Icons.location_on),
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                ),
              )),
              Flexible(
                  child: TextField(
                cursorHeight: 15,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      maxRadius: 14,
                      minRadius: 14,
                      backgroundColor: Colors.black,
                      child: Text(
                        'Go',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  hintStyle: TextStyle(fontSize: 14),
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  hintText: 'Search Item',
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                ),
              ))
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'All Categories',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: product.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2 / 2,
                  crossAxisSpacing: 0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 0),
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            height: size.height / 5,
                            width: size.width / 3,
                            child: Image.asset(
                              'assets/${product.products[index].image}'
                                  .toString(),
                              fit: BoxFit.fill,
                            )),
                      ),
                      Flexible(
                        child: Text(
                          product.products[index].name.toString(),
                          style: TextStyle(
                              color: Colors.yellow.shade800,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SubCategoriesPage(
                                  tname:
                                      product.products[index].name.toString(),
                                )));
                  },
                );
              }),
        )
      ]),
    );
  }
}
