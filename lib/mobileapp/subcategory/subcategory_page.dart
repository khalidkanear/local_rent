// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:local_rent/main.dart';
import 'package:local_rent/mobileapp/search/search_result_page.dart';

class SubCategoriesPage extends StatelessWidget {
  SubCategoriesPage({super.key, required this.tname});
  final drawerKey = GlobalKey<ScaffoldState>();
  final String tname;
  String? selectedFirst;
  String? selectedSecond;
  final product = MyApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      endDrawer: const Drawer(),
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              drawerKey.currentState?.openEndDrawer();
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
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 8),
            decoration: const BoxDecoration(color: Color(0xff59ADC1)),
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
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Outdoor / Recreation',
            style: TextStyle(fontFamily: 'Alfa Slab One', fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Filter:'),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 3.5,
                child: DropdownButtonFormField(
                    decoration: const InputDecoration(border: InputBorder.none),
                    hint: const Text('Rating'),
                    value: selectedFirst,
                    isDense: true,
                    items: ['1', '2', '3', '4', '4.5', '5']
                        .map((e) =>
                            DropdownMenuItem<String>(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (v) {}),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 3.5,
                child: DropdownButtonFormField(
                    decoration: const InputDecoration(border: InputBorder.none),
                    value: selectedSecond,
                    hint: const Text('Price'),
                    isDense: true,
                    items: ['20', '25', '30', '35', '40', '45', '50']
                        .map((e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),
                    onChanged: (v) {}),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: product.products.length,
                  itemBuilder: (ctx, index) => ListTile(
                        onTap: () {
                          Get.to(() => SearchResultPage());
                          // Get.to(() => DetailsScreen(
                          //     img: product.products[index].image ?? '',
                          //     name: product.products[index].name ?? '',
                          //     text: product.products[index].name ?? '',
                          //     rent: 'rent',
                          //     detal: 'its rent out'));
                        },
                        leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset('assets/outdoor/img4.png')),
                        title: const Text('Outdoor Grill'),
                        trailing: const Text(
                          '\$40 /day',
                          style: TextStyle(color: Color(0xffE89A2B)),
                        ),
                        subtitle: const Text('Waco, Tx'),
                      )))
        ],
      ),
    );
  }
}
