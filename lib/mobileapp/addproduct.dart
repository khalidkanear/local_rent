import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:table_calendar/table_calendar.dart';

class addproduct extends StatefulWidget {
  const addproduct({super.key});

  @override
  State<addproduct> createState() => _addproductState();
}

class _addproductState extends State<addproduct> {
  File? galleryFile;
  final picker = ImagePicker();
  bool pickup = false;
  bool delivery = false;
  DateTime today = DateTime.now();
  String? itemname;
  String? daily;
  String? weakly;
  String? monthly;
  String? description;
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var padding = EdgeInsets.only(left: size.width / 9);
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
              height: 20,
            ),
            Padding(
              padding: padding,
              child: GestureDetector(
                onTap: () {
                  _showPicker(context: context);
                },
                child: SizedBox(
                  height: size.width / 3,
                  width: size.width / 3,
                  child: galleryFile != null
                      ? Image.file(galleryFile!)
                      : Column(
                          children: [
                            Icon(
                              Icons.image_outlined,
                              size: size.width / 5,
                            ),
                            Text(
                              'Upload Item Image',
                              style: TextStyle(fontSize: size.width / 30),
                            )
                          ],
                        ),
                ),
              ),
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
                      itemname = value;
                    });
                  },
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
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
                      hintText: 'Item Name'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(size.width / 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: size.width / 4,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          daily = value;
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
                        hintText: 'Daily \$',
                        hintStyle: TextStyle(fontSize: size.width / 30),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: size.width / 4,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          weakly = value;
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
                        hintText: 'Weakly \$',
                        hintStyle: TextStyle(fontSize: size.width / 30),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: size.width / 4,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          monthly = value;
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
                        hintText: 'Monthly \$',
                        hintStyle: TextStyle(fontSize: size.width / 30),
                      ),
                    ),
                  )
                ],
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
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 8,
                  right: size.width / 8,
                  top: size.width / 20,
                  bottom: size.width / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text('Pickup'),
                      const SizedBox(
                        width: 10,
                      ),
                      Switch(
                          inactiveThumbColor: Colors.white,
                          activeColor: Colors.cyan,
                          inactiveTrackColor: Colors.amber,
                          value: pickup,
                          onChanged: (valve) {
                            setState(() {
                              pickup = valve;
                              print(pickup);
                            });
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Delivery'),
                      const SizedBox(
                        width: 10,
                      ),
                      Switch(
                          activeColor: Colors.cyan,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.amber,
                          value: delivery,
                          onChanged: (valve) {
                            setState(() {
                              delivery = valve;
                              print(delivery);
                            });
                          }),
                    ],
                  )
                ],
              ),
            ),
            const Center(
                child: Text(
              'Item Availability',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: size.width / 1.3,
                child: TableCalendar(
                  rowHeight: 45,
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  focusedDay: today,
                  firstDay: DateTime.utc(2022, 11, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  onDaySelected: _onDaySelected,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white.withOpacity(0.1),
          height: 250,
          child: Column(
            children: [
              Container(
                width: 300,
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'Change Your Profile Photo',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  getImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.all(16),
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Camera',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  getImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.all(16),
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Photo Library',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                height: 20,
                width: 300,
                color: Colors.transparent,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.all(16),
                  color: Colors.amber,
                  child: const Center(
                    child: Text('Cancel'),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future getImage(
    ImageSource img,
  ) async {
    final pickedFile = await picker.pickImage(source: img);
    XFile? xfilePick = pickedFile;
    setState(
      () {
        if (xfilePick != null) {
          galleryFile = File(pickedFile!.path);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
              const SnackBar(content: Text('Not Uploaded')));
        }
      },
    );
  }
}
