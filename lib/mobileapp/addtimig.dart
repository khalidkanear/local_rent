import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:local_rent/mobileapp/widgets/customtext_form_field.dart';

class EditProduct extends StatefulWidget {
  const EditProduct({super.key});

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  File? galleryFile;
  final picker = ImagePicker();
  int pickup = 0;
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

  int dropoff = 0;
  String? address;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var padding = EdgeInsets.only(left: size.width / 12);
    Widget pickupradio(String text, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {});
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
      appBar: AppBar(
        title: Image.asset(
          'assets/Logo.png',
          height: size.width / 4,
          width: size.width / 4,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  _showPicker(context: context);
                },
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
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                  hint: 'Item Name',
                  onChanged: (value) {
                    setState(() {});
                    itemname = value;
                  }),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: CustomTextFormField(
                        hint: 'Daily \$',
                        onChanged: (value) {
                          setState(() {
                            daily = value;
                          });
                        }),
                  ),
                  Flexible(
                    child: CustomTextFormField(
                        hint: 'Weakly \$',
                        onChanged: (value) {
                          setState(() {
                            weakly = value;
                          });
                        }),
                  ),
                  Flexible(
                    child: CustomTextFormField(
                      hint: 'Monthly \$',
                      onChanged: (value) {
                        setState(() {
                          monthly = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                hint: 'Description',
                onChanged: (value) {
                  setState(() {
                    description = value;
                  });
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    'Pickup Time',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: size.width / 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  pickupradio('09:00 am', 1),
                  pickupradio('09:30 am', 2),
                  pickupradio('10:00 am', 3),
                  pickupradio('11:00 am', 4),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Drop Off Time',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: size.width / 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dropoffradio('09:00 am', 1),
                  dropoffradio('09:30 am', 2),
                  dropoffradio('10:00 am', 3),
                  dropoffradio('11:00 am', 4),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Drop Off/Pick up Location',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: size.width / 20),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                  onChanged: (value) {
                    setState(() {
                      address = value;
                    });
                  },
                  hint:
                      'This information will be disclosed upon rental agreement'),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Cancellation Policy',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: size.width / 20),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                  hint: 'Description',
                  onChanged: (value) {
                    description = value;
                    setState(() {});
                  })
            ],
          ),
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
