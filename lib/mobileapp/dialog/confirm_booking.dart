import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../choice.dart';
import '../navbar.dart';

class ConfirmMessage extends StatelessWidget {
  const ConfirmMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'Congrats on your Rental',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'By renting you are supporting local.....Your Request Has been Sent. You will receive a confirmation message from the lender for pick up and delivery details. ',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.normal),
              textAlign: TextAlign.justify,
            ),
          ),
          Image.asset('assets/l2.png'),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const NavBar());
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff000000),
                foregroundColor: const Color(0xfff6f6f6),
                fixedSize: const Size(300, 40)),
            child: const Text('Make \$\$ With your stuff'),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
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
                const Text('Wednesday Oct. 19 - Saturday Oct. 22   '),
                const Row(
                  children: [
                    Text('Pick Up 10am October 19'),
                    Text('Return 9am October 22')
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
