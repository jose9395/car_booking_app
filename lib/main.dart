import 'package:flutter/material.dart';

void main() {
  runApp(CarBookingApp());
}

class CarBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarBookingScreen(),
    );
  }
}

class CarBookingScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cars = [
    {
      "name": "Mahindra Thar",
      "images": [
        "assets/images/MainThar.png",
        "assest/images/Thar1.png",
        "assest/images/Thar2.png",
        "assest/images/Thar3.png",
        "assest/images/Thar4.png"
      ],
      "fuelType": "Diesel",
      "gearType": "Manual",
      "seaters": 5,
    },
    {
      "name": "Maruti Swift",
      "images": ["assets/images/swiftpng.png"],
      "fuelType": "Petrol",
      "gearType": "Automatic",
      "seaters": 5,
    },
    {
      "name": "Mahindra Bolero",
      "images": ["assets/images/bolero.png"],
      "fuelType": "Petrol",
      "gearType": "Automatic",
      "seaters": 6,
    },
    {
      "name": "Kia Sonet",
      "images": ["assets/images/sonet.png"],
      "fuelType": "Petrol",
      "gearType": "Manual",
      "seaters": 5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Booking'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Car Image Section
            Container(
              height: 250,
              child: PageView(
                children: [
                  Image.asset(
                      'assets/images/MainThar.png'), // Replace with your image paths
                  Image.asset('assets/images/Thar1.png'),
                  Image.asset('assets/images/Thar2.png'),
                ],
              ),
            ),
            // Car Details Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mahindra Scorpio',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 8),
                      Text('Manual'),
                      SizedBox(width: 16),
                      Icon(Icons.people),
                      SizedBox(width: 8),
                      Text('5-6 Seats'),
                      SizedBox(width: 16),
                      Icon(Icons.ac_unit),
                      SizedBox(width: 8),
                      Text('AC'),
                      SizedBox(width: 16),
                      Icon(Icons.local_gas_station),
                      SizedBox(width: 8),
                      Text('Diesel'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    '₹7800 per day',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Pricing Plan: Includes 480 kms, excludes fuel\n• Extra hour: ₹500 per hour\n• Extra km: ₹50 per km',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Divider(),
            // Pricing Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pickup date & Time',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(height: 8),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      '12/08/2024 09:30AM',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(''),
                            Icon(Icons.compare_arrows,
                                color: Colors.white, size: 12),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pickup date & Time',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(height: 8),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      '13/08/2024 01:30PM',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Time',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          '1 Day 2hr',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    Divider(color: Colors.white38),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total base fare',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          '₹9299',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    Divider(color: Colors.white38),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Refundable security deposit',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          '₹2000',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    Divider(color: Colors.white38),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Insurance & GST',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          'Included',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    Divider(color: Colors.white38),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tolls, Parking & Inter-state taxes',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          'To be paid by you',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    Divider(color: Colors.white38),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Promo / Coupon Code',
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 12),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Apply',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform.scale(
                              scale: 0.6,
                              child: Switch(
                                value: false,
                                onChanged: (bool value) {},
                                activeColor: Colors.white,
                              ),
                            ),
                            Text(
                              'Doorstep delivery',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Total Price ₹11099',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Center(
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding:
                                EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blue[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            'Proceed Payment',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            // Important Points
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Important Points To Remember',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('• Charge in Pricing Plan: ₹50 per hour after 8pm.'),
                  Text('• Fuel: Return car with the same fuel level.'),
                ],
              ),
            ),
            Divider(),
            // Footer Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Other Cars You May Like',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cars.length,
                      itemBuilder: (context, index) {
                        final car = cars[index];
                        return GestureDetector(
                          onTap: () {},
                          child: Card(
                            margin: EdgeInsets.all(10),
                            child: Container(
                              width: 200,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(car["images"][0], height: 50),
                                  Text("Name: ${car['name']}"),
                                  Text("Fuel: ${car['fuelType']}"),
                                  Text("Gear: ${car['gearType']}"),
                                  Text("Seaters: ${car['seaters']}"),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            // Footer Links
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Valam',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Home'),
                      SizedBox(width: 16),
                      Text('FAQs'),
                      SizedBox(width: 16),
                      Text('Safety'),
                      SizedBox(width: 16),
                      Text('Blog'),
                      SizedBox(width: 16),
                      Text('Contact Us'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text('©2024 Valam'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
