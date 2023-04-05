import 'package:flutter/material.dart';
import './shipment_details.dart';
import './shipment_information.dart';

class UserMainPage extends StatefulWidget {
  @override
  State<UserMainPage> createState() => _UserMainPageState();
}

class _UserMainPageState extends State<UserMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              accountName: Text('Mohammed Amir'),
              accountEmail: Text('moe.amir10@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('MA'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Shipment details'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShipmentDetails(),
                    ));
              },
            ),
          ],
        ),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Hello text

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Hello,',
                style: TextStyle(fontSize: 15),
              ),
            ),

            // Username text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Mohammed Amir',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            // image and button container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600,
                        spreadRadius: 1,
                        blurRadius: 15)
                  ],
                ),
                child: Column(children: [
                  // Image
                  Container(
                    width: 300,
                    height: 200,
                    child: Image.asset(
                      'C:/Users/Ibrvhimwrld/development/projects/itec_404_repo/assets/images/img1.png',
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Welcome to speedyShip
                  Text(
                    'Welcome to SpeedyShip',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Enjoy our fast shipping service',
                      style: TextStyle(
                          fontSize: 12,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white)),

                  //Start shipping button
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShipmentInformation(),
                              ));
                        },
                        child: Text('Start shipping'),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(200, 60),
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                  )
                ]),
              ),
            )
          ],
        )
      ]),
    );
  }
}
