import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CarListScreen(),
  ));
}

class CarListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cars = [
    {
      "name": "Mahindra Thar",
      "images": ["image1.png", "image2.png"],
      "fuelType": "Diesel",
      "gearType": "Manual",
      "seaters": 5,
    },
    {
      "name": "Maruti Swift",
      "images": ["image3.png", "image4.png"],
      "fuelType": "Petrol",
      "gearType": "Automatic",
      "seaters": 5,
    },
    {
      "name": "Mahindra Bolero",
      "images": ["image5.png", "image6.png"],
      "fuelType": "Petrol",
      "gearType": "Automatic",
      "seaters": 6,
    },
    {
      "name": "Kia Sonet",
      "images": ["image7.png", "image8.png"],
      "fuelType": "Petrol",
      "gearType": "Manual",
      "seaters": 5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Other widgets can be added here

          // Scrollable list of car cards at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cars.length,
                itemBuilder: (context, index) {
                  final car = cars[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CarDetailScreen(car: car),
                        ),
                      );
                    },
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
          ),
        ],
      ),
    );
  }
}

class CarDetailScreen extends StatelessWidget {
  final Map<String, dynamic> car;

  CarDetailScreen({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car['name'])),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: car['images'].length,
              itemBuilder: (context, index) {
                return Image.asset(car['images'][index]);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: ${car['name']}", style: TextStyle(fontSize: 20)),
                Text("Fuel: ${car['fuelType']}", style: TextStyle(fontSize: 18)),
                Text("Gear: ${car['gearType']}", style: TextStyle(fontSize: 18)),
                Text("Seaters: ${car['seaters']}", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
