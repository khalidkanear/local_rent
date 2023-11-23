import 'package:flutter/material.dart';

class EditProduct extends StatefulWidget {
  const EditProduct({super.key});

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  int pickup = 0;
  int dropoff = 0;
  String? address;
  String? description;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var padding = EdgeInsets.only(left: size.width / 12);
    Widget pickupradio(String text, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            pickup = index;
          });
        },
        child: Container(
          height: size.width / 12,
          width: size.width / 6,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: pickup == index
                ? Colors.cyan.shade700
                : Colors.grey.withOpacity(0.2),
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                fontSize: size.width / 30,
                color: pickup == index ? Colors.white : Colors.black),
          )),
        ),
      );
    }

    Widget dropoffradio(String text, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            dropoff = index;
          });
        },
        child: Container(
          height: size.width / 12,
          width: size.width / 6,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: dropoff == index
                ? Colors.cyan.shade700
                : Colors.grey.withOpacity(0.2),
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                fontSize: size.width / 30,
                color: dropoff == index ? Colors.white : Colors.black),
          )),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/Logo.png',
                height: size.width / 4,
                width: size.width / 4,
              ),
            ),
            Container(
              height: size.width / 18,
              width: double.infinity,
              color: Colors.black87,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: padding,
                  child: Text(
                    'Pickup Time',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: size.width / 20),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.add,
                  size: size.width / 13,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 12, right: size.width / 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  pickupradio('09:00 am', 1),
                  pickupradio('09:30 am', 2),
                  pickupradio('10:00 am', 3),
                  pickupradio('11:00 am', 4),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: padding,
                  child: Text(
                    'Drop Off Time',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: size.width / 20),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.add,
                  size: size.width / 13,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 12, right: size.width / 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dropoffradio('09:00 am', 1),
                  dropoffradio('09:30 am', 2),
                  dropoffradio('10:00 am', 3),
                  dropoffradio('11:00 am', 4),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: padding,
              child: Text(
                'Drop Off/Pick up Location',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: size.width / 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 45,
                width: size.width / 1.2,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      address = value;
                    });
                  },
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .transparent), // Set transparent border when not focused
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .transparent), // Set transparent border when focused
                      ),
                      hintText:
                          'This information will be disclosed upon rental agreement',
                      hintStyle: TextStyle(fontSize: size.width / 35)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: padding,
              child: Text(
                'Cancellation Policy',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: size.width / 20),
              ),
            ),
            Center(
              child: Container(
                height: 80,
                width: size.width / 1.2,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      description = value;
                    });
                  },
                  maxLines: 3,
                  decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                      hintText: 'Description'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
