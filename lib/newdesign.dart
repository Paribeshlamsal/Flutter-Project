import 'package:flutter/material.dart';

class Newdesign extends StatelessWidget {
  const Newdesign({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> hotels = [
      {
        "image": "https://via.placeholder.com/150",
        "name": "AC Residency",
        "location": "Downtown, Mumbai",
        "price": "₹3,500 / night",
        "rating": 4.3
      },
      {
        "image": "https://via.placeholder.com/150",
        "name": "Inner Villas",
        "location": "Hillview, Manali",
        "price": "₹5,200 / night",
        "rating": 4.2
      },
      {
        "image": "https://via.placeholder.com/150",
        "name": "Courtyard by Marriott",
        "location": "Maple Street, Lucknow",
        "price": "₹7,300 / night",
        "rating": 4.3
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nearby Locations",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),

              /// Hotel list view
              Expanded(
                child: ListView.builder(
                  itemCount: hotels.length,
                  itemBuilder: (context, index) {
                    final hotel = hotels[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            hotel["image"],
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          hotel["name"],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(hotel["location"]),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              hotel["price"],
                              style: TextStyle(
                                color: Colors.green[700],
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 6),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star, color: Colors.orange, size: 16),
                                SizedBox(width: 4),
                                Text(hotel["rating"].toString()),
                                SizedBox(width: 6),
                                Icon(Icons.favorite_border, color: Colors.grey),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      /// Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green[700],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Discover"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: "My Trips"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}
