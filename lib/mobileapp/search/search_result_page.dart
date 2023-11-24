import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:local_rent/choice.dart';
import 'package:local_rent/mobileapp/reservation/reserve_item_page.dart';

class SearchResultPage extends StatelessWidget {
  SearchResultPage({super.key});
  final _drawerKey = GlobalKey<ScaffoldState>();
  DateTimeRange? _selectedDateRange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      key: _drawerKey,
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: const Color(0xff59ADC1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    label: const Text(
                      ' Back to Search Results',
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 20,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  const Icon(Icons.bookmark)
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: PageView(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (v) {},
                reverse: false,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/outdoor/img3.png',
                        height: 140,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/outdoor/img3.png',
                        height: 140,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/outdoor/img3.png',
                        height: 140,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Portable Grill'),
                      RatingBar(rating: 4, onRatingChanged: (v) {}),
                      const Text('\$60 per day')
                    ],
                  ),
                  const Text('Arlington, TX'),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    '''Behold the enchanting Meco's Tabletop Electric Grill, a marvel of culinary sorcery. Its vast expanse of 200 sq. inches offers ample space to conjure up a feast for the entire kin.''',
                    style: TextStyle(fontSize: 11),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/img2.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sarah James | Member since 2021',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              'Arlington, TX',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              'View Seller Profile',
                              style: TextStyle(fontSize: 8),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  RatingBar(rating: 5, onRatingChanged: (v) {})
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Available Dates'),
            CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime(2000, 01, 01),
                lastDate: DateTime(2050, 01, 01),
                onDateChanged: (v) {}),
            const Text('Item Location'),
            const SizedBox(
              height: 200,
              child: GoogleMap(
                myLocationButtonEnabled: false,
                tiltGesturesEnabled: false,
                scrollGesturesEnabled: false,
                zoomControlsEnabled: false,
                rotateGesturesEnabled: false,
                compassEnabled: false,
                mapToolbarEnabled: false,
                initialCameraPosition:
                    CameraPosition(target: LatLng(30.34, 70.1515)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const ReserveItemPage());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff000000),
                  foregroundColor: const Color(0xfff6f6f6),
                  fixedSize: const Size(300, 40)),
              child: const Text('Book Now'),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
