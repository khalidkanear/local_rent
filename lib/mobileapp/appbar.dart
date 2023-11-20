import 'package:flutter/material.dart';

AppBar CustomAppBar({bool? isprofile}) {
  return AppBar(
    automaticallyImplyLeading: false,
    flexibleSpace: Container(
      padding: const EdgeInsets.only(top: 30, left: 30),
      color: const Color(0xffa7ecfd),
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/Logo.png',
            height: 50,
            fit: BoxFit.fill,
          ),
          isprofile == true
              ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person,
                    size: 30,
                  ),
                )
              : Container()
        ],
      ),
    ),
  );
}
