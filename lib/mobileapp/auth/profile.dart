import 'package:flutter/material.dart';
import 'package:local_rent/mobileapp/auth/editprofile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool sms = false;
  bool email = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width / 10),
              child: Image.asset(
                'assets/Logo.png',
                height: size.width / 4,
                width: size.width / 4,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.black87,
                  child: Padding(
                    padding: EdgeInsets.only(left: size.width / 7, top: 15),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EditProfilePage()));
                        },
                        child: Text(
                          'Edit',
                          style: TextStyle(
                              color: Colors.white, fontSize: size.width / 20),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width / 1.6, top: 20),
                  child: CircleAvatar(
                    radius: size.width / 6,
                    backgroundImage: const AssetImage('assets/img5.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100, left: size.width / 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sara James',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width / 20),
                      ),
                      const Text('Arlington, TX')
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width / 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: size.width / 20),
                  ),
                  const Text('Just a mom making \$\$\$')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width / 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: size.width / 20),
                  ),
                  const Text('3432 Bleeker st.\nArlington, TX 43276'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 3, left: 5, right: 5),
                        child: Icon(
                          Icons.circle,
                          size: 5,
                        ),
                      ),
                      SizedBox(
                          width: size.width / 1.3,
                          child: Text(
                              style: TextStyle(fontSize: size.width / 35),
                              'Your address is never shown to potential renters or owners. It becomes temporary visible to other renters upon mutually accepted rentals, once you have chosen to rent the item to the renter.'))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width / 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width / 20),
                      ),
                      const Text('897429747982')
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width / 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width / 20),
                      ),
                      Text(
                        'Ashleyd9221@gmail.com',
                        style: TextStyle(fontSize: size.width / 30),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width / 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notifications Settings',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: size.width / 20),
                  ),
                  Row(
                    children: [
                      const Text('Send SMS Notification'),
                      const SizedBox(
                        width: 25,
                      ),
                      Switch(
                          activeColor: Colors.cyan,
                          inactiveTrackColor: Colors.amber,
                          value: sms,
                          onChanged: (valve) {
                            setState(() {
                              sms = valve;
                            });
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Send Email Notification'),
                      const SizedBox(
                        width: 20,
                      ),
                      Switch(
                          activeColor: Colors.cyan,
                          inactiveTrackColor: Colors.amber,
                          value: email,
                          onChanged: (valve) {
                            setState(() {
                              email = valve;
                            });
                          }),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width / 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Verified With',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: size.width / 20),
                  ),
                  Row(
                    children: [
                      const Text('Facebook/google'),
                      SizedBox(
                        width: size.width / 4,
                      ),
                      const Icon(
                        Icons.verified,
                        color: Colors.cyan,
                        size: 30,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 3, left: 5, right: 5),
                        child: Icon(
                          Icons.circle,
                          size: 5,
                        ),
                      ),
                      SizedBox(
                          width: size.width / 1.3,
                          child: Text(
                              style: TextStyle(fontSize: size.width / 35),
                              'To keep this platform secure. we require our users to get verified to ensure the safety of our users.'))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
