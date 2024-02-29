import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:irf_app/profession.dart';

import 'details_page.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> professions = [
    {"name": "Self Employed\n Business", "image": "Developer.png"},
    {"name": "Professionals", "image": "professional.png"},
    {"name": "Pensioners", "image": "pension.png"},
    {"name": "Engineer", "image": "professional.png"},
    {"name": "Digital \n Workspace", "image": "digital.png"},
    {"name": "Shopkeepers", "image": "shop.png"},
    {"name": "Chef", "image": "Developer.png"},
    {"name": "Lawyer", "image": "professional.png"},
    {"name": "Athlete", "image": "Developer.png"},
    {"name": "Musician", "image": "general.png"},
    {"name": "Pilot", "image": "shop.png"},
    {"name": "Scientist", "image": "Developer.png"},
    {"name": "Photographer", "image": "pension.png"},
    {"name": "Designer", "image": "general.png"},
    {"name": "Dancer", "image": "professional.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Create Account'),
            Spacer(),
            Icon(Icons.language), // Add your language icon here
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Choose your profession',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              children: List.generate(professions.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsPage(profession: professions[index])),
                    );
                  },
                  child: ProfessionCard(
                    name: professions[index]["name"],
                    image: professions[index]["image"],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}