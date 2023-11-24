import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_rent/choice.dart';
import 'package:local_rent/mobileapp/confirmation/confirm_reservation_page.dart';

class ReserveItemPage extends StatelessWidget {
  const ReserveItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/Logo.png',
          height: 100,
          width: 100,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/outdoor/img.png',
                        fit: BoxFit.cover,
                        height: 250,
                        width: 250,
                      ),
                    ),
                  ),
                  const Text(
                    'Outdoor Party Tent',
                  ),
                  RatingBar(rating: 5, onRatingChanged: (v) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Schedule Rental'),
                  const SizedBox(
                    height: 20,
                  ),
                  CalendarDatePicker(
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000, 01, 01),
                      lastDate: DateTime(2050, 01, 01),
                      onDateChanged: (v) {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          Text(
                            'Rental Price',
                            style: TextStyle(fontSize: 11),
                          ),
                          Text(
                            '\$75',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.bookmark,
                        color: Color(0xff59ADC1),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.bottomSheet(
                            bottomSheet(),
                            isScrollControlled: true,
                            shape: const BeveledRectangleBorder(),
                            backgroundColor: Colors.white,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff000000),
                            foregroundColor: const Color(0xfff6f6f6),
                            fixedSize: const Size(200, 40)),
                        child: const Text('Reserve Now'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bottomSheet() {
  return Wrap(
    children: [
      const Text(
        'Wednesday Oct. 19 - Saturday Oct. 22 ',
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/outdoor/img.png',
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Outdoor Party Tent'),
                      const Text('Arlington, Tx '),
                      Row(
                        children: [
                          const Text(
                            '\$60 /day',
                            style: TextStyle(
                                color: Color(
                                  0xffE89A2B,
                                ),
                                fontSize: 13),
                          ),
                          RatingBar(rating: 4, onRatingChanged: (v) {})
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Pick up Time'),
            const Wrap(
              children: [
                Chip(label: Text('09:00am')),
                SizedBox(
                  width: 5,
                ),
                Chip(label: Text('09:30am')),
                SizedBox(
                  width: 5,
                ),
                Chip(label: Text('10:00am')),
                SizedBox(
                  width: 5,
                ),
                Chip(label: Text('10:30am')),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Drop Off Time'),
            const Wrap(
              children: [
                Chip(label: Text('09:00am')),
                SizedBox(
                  width: 5,
                ),
                Chip(label: Text('09:30am')),
                SizedBox(
                  width: 5,
                ),
                Chip(label: Text('10:00am')),
                SizedBox(
                  width: 5,
                ),
                Chip(label: Text('10:30am')),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Intended Use'),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              maxLines: 2,
              decoration: InputDecoration(
                  hintText: 'I plan on using it for...',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  filled: true,
                  fillColor: Color(0xffF6F6F6)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Form of Payment'),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                Image.asset(
                  'assets/vpay.webp',
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  'assets/Paypal.png',
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  'assets/vpay.webp',
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  'assets/Paypal.png',
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const ConfirmReservationPage());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFBB03B),
                  foregroundColor: const Color(0xfff6f6f6),
                  fixedSize: const Size(300, 40)),
              child: const Text('Proceed'),
            )
          ],
        ),
      ),
    ],
  );
}
