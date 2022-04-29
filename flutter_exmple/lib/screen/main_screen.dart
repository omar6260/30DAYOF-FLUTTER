import 'package:flutter/material.dart';
import 'package:flutter_exmple/screen/user.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  _makingPhoneCall(number) async {
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  _whatsapp(number) async {
    await launch(
        "https://wa.me/$number?text=Hi, how are you?\n Can we meet sometimes?");
  }

  _mail(eMail) async {
    final mailtoLink = Mailto(
        to: ["$eMail"],
        subject: "mail example",
        body: "Nice app but needs some improvement.");
    await launch("$mailtoLink");
  }

  _github(omar6260) async {
    await launch("https://www.github.com/$omar6260/");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('My Portfolio'),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          const Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 105,
              backgroundImage: AssetImage("assets/omar.png"),
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () async {
                      await _makingPhoneCall("+221771508362");
                    },
                    child: const UserScreen(
                      title: "Call Me ",
                      icon: Icons.call,
                    ),
                  ),
                  GestureDetector(
                      onTap: () async {
                        _whatsapp("+221771508362");
                      },
                      child: const UserScreen(
                          title: "WhatsApp", icon: Icons.message)),
                  GestureDetector(
                    onTap: () async {
                      await _mail("foumar404@gmail.com");
                    },
                    child: const UserScreen(
                      title: "E-mail",
                      icon: Icons.mail,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        _github("omar6260");
                      },
                      child: const UserScreen(
                        title: "Github",
                        icon: Icons.camera,
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
