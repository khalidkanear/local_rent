import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_rent/choice.dart';
import 'package:local_rent/detail.dart';
import 'package:local_rent/main.dart';
import 'package:local_rent/products/product_model.dart';

class SearchRentalProduct extends StatelessWidget {
  const SearchRentalProduct({super.key});

  @override
  Widget build(BuildContext context) {
    MyApp product = MyApp();
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/Logo.png',
          height: 100,
          width: 100,
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: 20,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            decoration: const BoxDecoration(
                color: Color(0xff59ADC1),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: TextField(
              style: const TextStyle(fontSize: 15, height: 1),
              onChanged: (value) {},
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    Get.to(() => const SearchRentalProduct());
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Text(
                        'GO',
                        style: TextStyle(
                            color: Color(0xff59ADC1),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                prefixIcon: const Icon(Icons.search),
                contentPadding:
                    const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                hintText: "Search Rentals",
                hintStyle: const TextStyle(fontSize: 14),
                enabledBorder:
                    InputBorder.none, // Set transparent border when not focused

                focusedBorder:
                    InputBorder.none, // Set transparent border when focused
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: product.products.length,
              shrinkWrap: true,
              itemBuilder: (ctx, index) => InkWell(
                onTap: () => Get.to(() => DetailsScreen(
                      detal: 'rent out not available currently',
                      img: product.products[index].image ?? '',
                      name: product.products[index].name ?? '',
                      text: product.products[index].name ?? '',
                      rent: product.products[index].name ?? '',
                    )),
                child: Container(
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
                                    RatingBar(
                                        rating: 4, onRatingChanged: (v) {})
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
