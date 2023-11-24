import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_rent/mobileapp/dialog/confirm_booking.dart';

import '../../choice.dart';

class ConfirmReservationPage extends StatelessWidget {
  const ConfirmReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Wrap(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Confirm & Request',
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
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
                    const Text('Wednesday Oct. 19 - Saturday Oct. 22 '),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pick Up 10am October 19',
                          style: TextStyle(
                              fontSize: 9,
                              decoration: TextDecoration.underline),
                        ),
                        Text('Return 9am October 22',
                            style: TextStyle(
                                fontSize: 9,
                                decoration: TextDecoration.underline)),
                      ],
                    ),
                    SwitchListTile.adaptive(
                      contentPadding: EdgeInsets.zero,
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: true,
                      onChanged: (v) {},
                      subtitle: const Text(
                        'You agree to pickup this item and drop it off at the provided location.',
                        style: TextStyle(
                          fontFamily: '',
                          fontSize: 9,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Intended Use'),
                    const Text(
                      'Item will be used to ...',
                      style: TextStyle(fontSize: 9, fontFamily: ''),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Pick-Up / Drop-Off Zone'),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Arlington, TX 23432',
                        style: TextStyle(fontSize: 9, fontFamily: '')),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Payment Method'),
                    Image.asset(
                      'assets/vpay.webp',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SwitchListTile.adaptive(
                      contentPadding: EdgeInsets.zero,
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: true,
                      onChanged: (v) {},
                      subtitle: const Text(
                        'I agree to the Renter Liability Policy, Cancellation Policy, and I also agree to pay the total amount shown.',
                        style: TextStyle(
                          fontFamily: '',
                          fontSize: 9,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => const ConfirmMessage());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff000000),
                          foregroundColor: const Color(0xfff6f6f6),
                          fixedSize: const Size(300, 40)),
                      child: const Text('Reserve Now'),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
