import 'package:car_booking_app/datePicker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const CarBookingApp());
}

class CarBookingApp extends StatefulWidget {
  const CarBookingApp({super.key});

  @override
  State<CarBookingApp> createState() => _CarBookingAppState();
}

class _CarBookingAppState extends State<CarBookingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Booking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CarBookingScreen(),
    );
  }
}

class CarBookingScreen extends StatefulWidget {
  const CarBookingScreen({super.key});

  @override
  State<CarBookingScreen> createState() => _CarBookingScreenState();
}

class _CarBookingScreenState extends State<CarBookingScreen> {
  bool _isDoorStepDelivery = false;
  bool _isLocationButtonClicked = false;

  final List<Map<String, dynamic>> cars = [
    {
      "name": "Mahindra Thar",
      "images": [
        "assets/images/MainThar.png",
        "assets/images/Thar1.png",
        "assets/images/Thar2.png",
        "assets/images/Thar3.png",
        "assets/images/Thar4.png"
      ],
      "fuelType": "Diesel",
      "gearType": "Manual",
      "seaters": 4,
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
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
               
                Color(0xff0c58e9), // Color at index 700
                Color(0xff1147bc), // Color at index 800
                Color(0xff123984), // Color at index 900
                Color(0xff11285a), // Color at index 950
                Color(0xff11285a), // Color at index 950
                Color(0xff123984), // Color at index 900
                Color(0xff1147bc), // Color at index 800
                Color(0xff0c58e9), // Color at index 700
                Color(0xff136ffd), // Color at index 600
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Padding(
                padding: const EdgeInsets.all(6),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1)),
                  child: CircleAvatar(
                      backgroundColor: Colors.blue[700],
                      child: const Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.white,
                        size: 12,
                      )),
                ))),
        title: const Text(
          'Car Booking',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffd8edff),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.deepOrange,
                        ),
                        Text("4.2"),
                        Text(" ")
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.bookmark_outline),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
           
            SizedBox(
              height: 250,
              child: PageView(
                children: [
                  Image.asset(
                    'assets/images/MainThar.png',
                    fit: BoxFit.cover,
                  ), 
                  Image.asset(
                    'assets/images/Thar1.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset('assets/images/Thar2.png', fit: BoxFit.cover),
                  Image.asset(
                    'assets/images/Thar3.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset('assets/images/Thar4.png', fit: BoxFit.cover),
                ],
              ),
            ),
            SizedBox(
              height: 75,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cars[0]["images"].length,
                  itemBuilder: (context, index) {
                    var thar = cars[0]["images"];
                    return (GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2.5),
                        width: 85,
                        child: Image.asset(
                          thar[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ));
                  }),
            ),
            // Car Details Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffd8edff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Available Now",
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                  const SizedBox(height: 8),
                  const Text(
                    'Mahindra Scorpio',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(Icons.car_repair_sharp),
                      SizedBox(width: 4),
                      Text('Manual'),
                      SizedBox(width: 8),
                      Icon(Icons.event_seat),
                      SizedBox(width: 4),
                      Text('6+1 Seats'),
                      SizedBox(width: 8),
                      Icon(Icons.ac_unit),
                      SizedBox(width: 4),
                      Text('AC'),
                      SizedBox(width: 8),
                      Icon(Icons.local_gas_station),
                      SizedBox(width: 4),
                      Text('Diesel'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Text(
                        '₹7800',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(" "),
                      Text("per day")
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffd8edff),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        '• Pricing Plan: Includes 480 kms, excludes fuel\n• Extra hour: ₹550 per hour\n• Extra km: ₹35 per km',
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Pricing Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                            const Text(
                              'Pickup date & Time',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white30,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: DateTimePicker()),
                            ),
                          ],
                        ),
                        const Column(
                          children: [
                            Text(''),
                            Icon(Icons.compare_arrows,
                                color: Colors.white, size: 12),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Pickup date & Time',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white30,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: DateTimePicker()),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(height: 20),
                    const Row(
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
                    const Divider(color: Colors.white38),
                    const Row(
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
                    const Divider(color: Colors.white38),
                    const Row(
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
                    const Divider(color: Colors.white38),
                    if (_isDoorStepDelivery)
                      const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Doorstep delivery & pickup',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                '₹500',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                          Divider(color: Colors.white38),
                        ],
                      ),
                    const Row(
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
                    const Divider(color: Colors.white38),
                    const Row(
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
                    const Divider(color: Colors.white38),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Promo / Coupon Code',
                        labelStyle:
                            const TextStyle(color: Colors.white, fontSize: 12),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: const Text(
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
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform.scale(
                              scale: 0.6,
                              child: Switch(
                                value: _isDoorStepDelivery,
                                onChanged: (bool value) {
                                  setState(() {
                                    _isDoorStepDelivery = value;
                                  });
                                },
                                activeColor: Colors.white,
                              ),
                            ),
                            const Text(
                              'Doorstep delivery',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Total Price ₹${_isDoorStepDelivery ? 11599 : 11099}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Row(
                        children: [
                          if (_isDoorStepDelivery) ...[
                            ElevatedButton.icon(
                              icon: Icon(
                                _isLocationButtonClicked
                                    ? Icons.verified
                                    : Icons.location_on,
                                size: 14,
                                color: _isLocationButtonClicked
                                    ? Colors.green
                                    : Colors.blue,
                              ),
                              label: Text(
                                _isLocationButtonClicked
                                    ? "Location Updated"
                                    : "Select Your Location",
                                style: const TextStyle(fontSize: 12),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isLocationButtonClicked = true;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.blue[900],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.blue[900],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                'Proceed Payment',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  "assets/images/map.png.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Important Points
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Important Points To Remember',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Card(
                          color: Color(0xffd8edff),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Change in Pricing Plan",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "The pricing plan \n (10 kms/hr, without fuel)\n cannot be changed after \n the booking is made",
                                  softWrap: true,
                                  overflow: TextOverflow.visible,
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(height: 80),
                                Icon(Icons.currency_rupee_outlined)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Color(0xffd8edff),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fuel",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "In case you are returning \n the car at a lower fuel \n level than what was received,\n  we will charge a flat \n  Rs 500 refuelling service \n charge + actual fuel \n cost to get  the tank \n to the same level \n as what was received",
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(height: 13),
                                Icon(Icons.gas_meter)
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            // Footer Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Other Cars You May Like',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cars.length,
                      itemBuilder: (context, index) {
                        final car = cars[index];
                        return GestureDetector(
                          onTap: () {},
                          child: Card(
                            margin: const EdgeInsets.all(10),
                            child: Container(
                              width: 200,
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(car["images"][0], height: 80),
                                  Text(
                                    car['name'],
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("Fuel: ${car['fuelType']}"),
                                  Text("Gear: ${car['gearType']}"),
                                  Text("Seaters: ${car['seaters']}"),
                                  // Text(car["name"]),
                                  // Row(children: [Text(car["gearType"]),Text((car["seaters"]).toString())],),
                                  //  Row(children: [Text("₹4500"),Text("per day")],),
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

            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color(0xff0c58e9), // Color at index 700
                  Color(0xff1147bc), // Color at index 800
                  Color(0xff123984), // Color at index 900
                  Color(0xff11285a), // Color at index 950
                  Color(0xff11285a), // Color at index 950
                  Color(0xff123984), // Color at index 900
                  Color(0xff1147bc), // Color at index 800
                  Color(0xff0c58e9), // Color at index 700
                  Color(0xff136ffd), // Color at index 600
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset("assets/images/Logo.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Row(
                          children: [
                            FaIcon(FontAwesomeIcons.youtube),
                            SizedBox(
                              width: 5,
                            ),
                            FaIcon(FontAwesomeIcons.facebook),
                            SizedBox(
                              width: 5,
                            ),
                            FaIcon(FontAwesomeIcons.instagram),
                            SizedBox(
                              width: 5,
                            ),
                            FaIcon(FontAwesomeIcons.linkedin),
                            SizedBox(
                              width: 5,
                            ),
                            FaIcon(FontAwesomeIcons.twitter),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Privacy | Terms & Conditions",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Home',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('FAQs',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Safety',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Blog',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Contact Us',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        SizedBox(
                          height: 20,
                        ),
                        Text(""),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('      ©2024 Valam',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
