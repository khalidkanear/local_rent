import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class editprofile extends StatefulWidget {
  const editprofile({super.key});

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  File? galleryFile;
  final picker = ImagePicker();
  bool isEditing = false;
  TextEditingController namecon = TextEditingController();
  TextEditingController secnamecon = TextEditingController();
  TextEditingController addresscon = TextEditingController();
  TextEditingController phonecon = TextEditingController();
  TextEditingController emailcon = TextEditingController();
  TextEditingController aboutmecon = TextEditingController();
  String name = 'Sara';
  String secname = 'Jones';
  String address = '3432 Bleeker st.Arlington, TX 43276';
  String phone = '(407) 727-8394';
  String email = 'SarahJ32@gmail.com';
  String aboutme = '...';
  bool delete = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var padding = EdgeInsets.only(left: size.width / 7);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height / 10,
              color: Colors.cyan.withOpacity(0.4),
              width: double.infinity,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 10, right: size.width / 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: size.width / 8,
                    backgroundImage: galleryFile != null
                        ? AssetImage(galleryFile.toString())
                        : const AssetImage('assets/img_5.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      _showPicker(context: context);
                    },
                    child: Container(
                      height: size.height / 25,
                      width: size.width / 2.5,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Colors.black),
                      child: Center(
                        child: Text(
                          'Change Profile Photo',
                          style: TextStyle(
                              fontSize: size.width / 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: padding,
              child: Text(
                'First Name (required)',
                style: TextStyle(fontSize: size.width / 40),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: padding,
              child: isEditing
                  ? TextField(
                      controller: namecon,
                      decoration: const InputDecoration(
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
                      ),
                      onEditingComplete: () {
                        _saveItem;
                      },
                    )
                  : GestureDetector(
                      onTap: _startEditing,
                      child: Text(
                        name,
                        style: TextStyle(fontSize: size.width / 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: padding,
              child: Text(
                'Last Name (required)',
                style: TextStyle(fontSize: size.width / 40),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: padding,
              child: isEditing
                  ? TextField(
                      controller: secnamecon,
                      decoration: const InputDecoration(
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
                      ),
                      onEditingComplete: () {
                        _saveItem;
                      },
                    )
                  : GestureDetector(
                      onTap: _startEditing,
                      child: Text(
                        secname,
                        style: TextStyle(fontSize: size.width / 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: padding,
              child: Text(
                'Address (required) This will remain private and is only for in app features',
                style: TextStyle(fontSize: size.width / 40),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: padding,
              child: isEditing
                  ? TextField(
                      controller: addresscon,
                      decoration: const InputDecoration(
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
                      ),
                      onEditingComplete: () {
                        _saveItem;
                      },
                    )
                  : GestureDetector(
                      onTap: _startEditing,
                      child: SizedBox(
                        width: size.width / 2.2,
                        child: Text(
                          address,
                          style: TextStyle(fontSize: size.width / 20),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: padding,
              child: Text(
                'Number  (required)',
                style: TextStyle(fontSize: size.width / 40),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: padding,
              child: isEditing
                  ? TextField(
                      controller: phonecon,
                      decoration: const InputDecoration(
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
                      ),
                      onEditingComplete: () {
                        _saveItem;
                      },
                    )
                  : GestureDetector(
                      onTap: _startEditing,
                      child: Text(
                        phone,
                        style: TextStyle(fontSize: size.width / 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: padding,
              child: Text(
                'Email (required)',
                style: TextStyle(fontSize: size.width / 40),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: padding,
              child: isEditing
                  ? TextField(
                      controller: emailcon,
                      decoration: const InputDecoration(
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
                      ),
                      onEditingComplete: () {
                        _saveItem;
                      },
                    )
                  : GestureDetector(
                      onTap: _startEditing,
                      child: Text(
                        email,
                        style: TextStyle(fontSize: size.width / 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: padding,
              child: Text(
                'About Me (optional)',
                style: TextStyle(fontSize: size.width / 40),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: padding,
              child: isEditing
                  ? TextField(
                      controller: aboutmecon,
                      decoration: const InputDecoration(
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
                      ),
                      onEditingComplete: () {
                        _saveItem;
                      },
                    )
                  : GestureDetector(
                      onTap: _startEditing,
                      child: SizedBox(
                        width: size.width / 1.5,
                        child: Text(
                          aboutme,
                          style: TextStyle(fontSize: size.width / 20),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: padding,
              child: GestureDetector(
                onTap: () {
                  _showDialog(context);
                },
                child: const Text(
                  'Delete Account',
                  style: TextStyle(color: Colors.orangeAccent),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _startEditing() {
    setState(() {
      isEditing = true;
      namecon.text = name;
      secnamecon.text = secname;
      addresscon.text = address;
      phonecon.text = phone;
      emailcon.text = email;
      aboutmecon.text = aboutme;
    });
  }

  void _saveItem() {
    setState(() {
      name = namecon.text;
      secname = secnamecon.text;
      address = addresscon.text;
      phone = phonecon.text;
      email = emailcon.text;
      aboutme = aboutmecon.text;
      isEditing = false;
    });
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

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Confirom!'),
          actions: [
            TextButton(
              onPressed: () {
                // Perform your action on Confirm button press
                setState(() {
                  delete = true;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Confirm'),
            ),
            TextButton(
              onPressed: () {
                // Perform your action on Cancel button press
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
