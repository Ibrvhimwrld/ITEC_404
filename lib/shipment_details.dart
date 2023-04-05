import 'package:flutter/material.dart';

class ShipmentDetails extends StatefulWidget {
  @override
  State<ShipmentDetails> createState() => _ShipmentDetailsState();
}

class _ShipmentDetailsState extends State<ShipmentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shipment Details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(children: [
        // shipment details container
        Padding(
          padding: const EdgeInsets.all(20.0),
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
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Shipment ID
                  Text(
                    'Shipment ID',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '#189353874',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  // From
                  Text(
                    'From',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Famagusta, Ugursal Dormitory',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  // To
                  Text(
                    'To',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Famagusta, Nural Dormitory',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  //Weight and height
                  Row(
                    children: [
                      // weight
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '50KG',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),

                      // Height
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Height',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '150CM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  // Time of Approval
                  Text(
                    'Time of Approval',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '24/09/2023',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  // Time of Arrival
                  Text(
                    'Time of Arrival',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '29/09/2023',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {},
            child: Text('Start shipping'),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 60),
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))))
      ]),
    );
  }
}
