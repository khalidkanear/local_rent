import 'package:flutter/material.dart';
import '../categories.dart';
import 'login_page.dart';
import 'package:local_rent/main.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:local_rent/listen.dart';
import 'userdata_model.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  File? galleryFile;
  final picker = ImagePicker();
  bool? selectedRadio; // Initialize with a default value
  void handleRadioValueChange(bool? value) {
    setState(() {
      selectedRadio = value ?? true;
    });
  }

  bool? term; // Initialize with a default value
  void termcondition(bool? value) {
    setState(() {
      term = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Users modal = Users();
    String? day, mnth;
    bool? condition = term;
    modal.isMale = selectedRadio;
    var size = MediaQuery.sizeOf(context);
    var buttonstyle = TextStyle(
        fontSize: size.width / 70,
        color: Colors.black,
        fontWeight: FontWeight.w700);
    var buttonstyle1 = TextStyle(
        fontSize: size.width / 40,
        color: Colors.black,
        fontWeight: FontWeight.w700);
    var buttonstyle2 = TextStyle(
        fontSize: size.width / 20,
        color: Colors.black,
        fontWeight: FontWeight.w700);
    var textfield = InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.cyan, width: 2),
        borderRadius: BorderRadius.circular(30.0),
      ),
      enabledBorder: OutlineInputBorder(
        // Border when the field is not focused
        borderSide: const BorderSide(color: Colors.cyan, width: 2),
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/Logo.png',
                      height: size.height / 8,
                      width: size.width / 5,
                    ),
                  ),
                  Flexible(
                      child: LayoutBuilder(builder: (context, constraints) {
                    if (constraints.maxWidth > 600) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width / 4,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const LandingPage()));
                              },
                              child: Text(
                                'ABOUT US',
                                style: buttonstyle,
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const listen()));
                              },
                              child: Text(
                                'HOW IT WORKS',
                                style: buttonstyle,
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const LoginPage()));
                              },
                              child: Text(
                                'LOGIN',
                                style: buttonstyle,
                              ))
                        ],
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width / 8,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const LandingPage()));
                            },
                            child: Text(
                              'ABOUT US',
                              style: buttonstyle1,
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const listen()));
                            },
                            child: Text(
                              'HOW IT WORKS',
                              style: buttonstyle1,
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const LoginPage()));
                            },
                            child: Text(
                              'LOGIN',
                              style: buttonstyle1,
                            ))
                      ],
                    );
                  })),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Expanded(
                      child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.cyan,
                              radius: 40,
                              child: galleryFile == null
                                  ? const Center(
                                      child: Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    )
                                  : Center(child: Image.file(galleryFile!)),
                            ),
                          ),
                          onTap: () {
                            _showPicker(context: context);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Full Name',
                          style: buttonstyle2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: textfield,
                          onChanged: (value) {
                            modal.name = value;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Gender',
                          style: buttonstyle2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RadioListTile(
                          value: true,
                          groupValue: selectedRadio,
                          onChanged: handleRadioValueChange,
                          title: const Text('Male'),
                          activeColor: Colors.cyan,
                        ),
                        RadioListTile(
                          value: false,
                          groupValue: selectedRadio,
                          onChanged: handleRadioValueChange,
                          title: const Text('Female'),
                          activeColor: Colors.cyan,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Date of Birth',
                          style: buttonstyle2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: (size.width / 100) * 23,
                              height: (size.height / 100) * 7,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  day = value;
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "/",
                              style: buttonstyle2,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: (size.width / 100) * 23,
                              height: (size.height / 100) * 7,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  mnth = value;
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "/",
                              style: buttonstyle2,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: (size.width / 100) * 28,
                              height: (size.height / 100) * 7,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  modal.dob = '$day./$mnth./$value';
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Address',
                          style: buttonstyle2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: textfield,
                          onChanged: (value) {
                            modal.address = value;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Street',
                          style: buttonstyle2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: textfield,
                          onChanged: (value) {
                            modal.street = value;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'City',
                          style: buttonstyle2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: textfield,
                          onChanged: (value) {
                            modal.city = value;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Zip Code',
                          style: buttonstyle2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: textfield,
                          onChanged: (value) {
                            modal.zipcode = value;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Phone Number',
                          style: buttonstyle2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: textfield,
                          onChanged: (value) {
                            modal.phone = value;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Email Address',
                          style: buttonstyle2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: textfield,
                          onChanged: (value) {
                            modal.email = value;
                          },
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Text(
                          'I am aware that it is my duty to submit truthful information.',
                          style: TextStyle(
                              fontSize: size.width / 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RadioListTile(
                          value: true,
                          groupValue: term,
                          onChanged: termcondition,
                          activeColor: Colors.cyan,
                          title: Text(
                            'By Signing up you agree to our terms of service & privacy policy',
                            style: TextStyle(
                                fontSize: size.width / 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  maximumSize: const Size(260, 60),
                                  minimumSize: const Size(260, 60),
                                  padding: const EdgeInsets.all(20),
                                  backgroundColor:
                                      Colors.cyanAccent.withOpacity(0.4)),
                              onPressed: () {
                                if (modal.name != null ||
                                    modal.email != null ||
                                    modal.phone != null ||
                                    modal.zipcode != null ||
                                    modal.city != null ||
                                    modal.dob != null ||
                                    modal.street != null ||
                                    modal.address != null ||
                                    modal.isMale != null) {
                                  if (condition == true) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const categorie()));
                                    const snackBar = SnackBar(
                                      content: Text("Succes"),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  } else {
                                    const snackBar = SnackBar(
                                      content: Text(
                                          "Allert:  Please Accept Terms and Conditions!"),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  }
                                } else {
                                  const snackBar = SnackBar(
                                    content: Text(
                                        "Allert:  Please Fill All Fields!"),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('SIGN UP',
                                      style: TextStyle(color: Colors.white)),
                                  Icon(
                                    Icons.arrow_right,
                                    size: 25,
                                    color: Colors.white,
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  )),
                );
              }
              return Padding(
                padding: EdgeInsets.only(
                    top: size.height / 10,
                    bottom: size.height / 10,
                    left: size.width / 10,
                    right: size.width / 10),
                child: Padding(
                  padding: EdgeInsets.only(left: (size.width / 100) * 5),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Full Name',
                                  style: buttonstyle1,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: (size.width / 100) * 50,
                                  child: TextFormField(
                                    decoration: textfield,
                                    onChanged: (value) {
                                      modal.name = value;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              child: SizedBox(
                                height: size.height / 5,
                                width: size.width / 4,
                                child: galleryFile == null
                                    ? const Center(
                                        child: Image(
                                            image:
                                                AssetImage('assets/img_1.png')))
                                    : Center(child: Image.file(galleryFile!)),
                              ),
                              onTap: () {
                                _showPicker(context: context);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Gender',
                          style: buttonstyle1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RadioListTile(
                          value: true,
                          groupValue: selectedRadio,
                          onChanged: handleRadioValueChange,
                          title: const Text('Male'),
                          activeColor: Colors.cyan,
                        ),
                        RadioListTile(
                          value: false,
                          groupValue: selectedRadio,
                          onChanged: handleRadioValueChange,
                          title: const Text('Female'),
                          activeColor: Colors.cyan,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Date of Birth',
                          style: buttonstyle1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: (size.width / 100) * 15,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  day = value;
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "/",
                              style: buttonstyle1,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: (size.width / 100) * 15,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  mnth = value;
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "/",
                              style: buttonstyle1,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: (size.width / 100) * 18,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  modal.dob = value;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Address',
                              style: buttonstyle1,
                            ),
                            SizedBox(
                              width: (size.width / 100) * 43.5,
                            ),
                            Text(
                              'Street',
                              style: buttonstyle1,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: (size.width / 100) * 50,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  modal.address = value;
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: (size.width / 100) * 20,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  modal.street = value;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'City',
                              style: buttonstyle1,
                            ),
                            SizedBox(
                              width: (size.width / 100) * 33,
                            ),
                            Text(
                              'Zip Code',
                              style: buttonstyle1,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: (size.width / 100) * 35,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  modal.city = value;
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: (size.width / 100) * 35,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  modal.zipcode = value;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Phone Number',
                              style: buttonstyle1,
                            ),
                            SizedBox(
                              width: (size.width / 100) * 8,
                            ),
                            Text(
                              'Email Address',
                              style: buttonstyle1,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: (size.width / 100) * 20,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  modal.phone = value;
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: (size.width / 100) * 50,
                              child: TextFormField(
                                decoration: textfield,
                                onChanged: (value) {
                                  modal.email = value;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Text(
                          'I am aware that it is my duty to submit truthful information.',
                          style: TextStyle(
                              fontSize: size.width / 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RadioListTile(
                          value: true,
                          groupValue: term,
                          onChanged: termcondition,
                          activeColor: Colors.cyan,
                          title: Text(
                            'By Signing up you agree to our terms of service & privacy policy',
                            style: TextStyle(
                                fontSize: size.width / 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  maximumSize: const Size(260, 60),
                                  minimumSize: const Size(260, 60),
                                  padding: const EdgeInsets.all(20),
                                  backgroundColor:
                                      Colors.cyanAccent.withOpacity(0.4)),
                              onPressed: () {
                                if (modal.name != null ||
                                    modal.email != null ||
                                    modal.phone != null ||
                                    modal.zipcode != null ||
                                    modal.city != null ||
                                    modal.dob != null ||
                                    modal.street != null ||
                                    modal.address != null ||
                                    modal.isMale != null) {
                                  if (condition == true) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const categorie()));
                                    const snackBar = SnackBar(
                                      content: Text("Succes"),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  } else {
                                    const snackBar = SnackBar(
                                      content: Text(
                                        "Allert:  Please Accept Terms and Conditions!",
                                      ),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  }
                                } else {
                                  const snackBar = SnackBar(
                                    content: Text(
                                        "Allert:  Please Fill All Fields!"),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('SIGN UP',
                                      style: TextStyle(color: Colors.white)),
                                  Icon(
                                    Icons.arrow_right,
                                    size: 25,
                                    color: Colors.white,
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            })
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
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  getImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
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
              const SnackBar(
                  content: Image(image: AssetImage('assets/img_1.png'))));
        }
      },
    );
  }
}
