import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/profile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rescue Animals'),
        actions: [ProfileIcon()],
      ),
      bottomNavigationBar: Navbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSearchBar(),
            _buildSlider(),
            SizedBox(height: 20),
            _buildButtonGrid(context), // Pass context to _buildButtonGrid
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 224, 217, 217),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Icon(Icons.search),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider() {
  List<String> imageFiles = ['assets/images/image1.jpg', 'assets/images/image2.jpeg', 'assets/images/image3.jpeg']; // replace with your image file names

  return Container(
    height: 150,
    child: PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imageFiles.length,
      itemBuilder: (context, index) {
        return Container(
          width: 300,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            'assets/${imageFiles[index]}', // use the list to access the image file names
            fit: BoxFit.cover,
          ),
        );
      },
    ),
  );
}

  Widget _buildButtonGrid(BuildContext context) { // Accept context as parameter
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 3,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      mainAxisSpacing: 16, // add space between rows
      crossAxisSpacing: 16, // add space between columns
      children: [
        _buildButton(
          title: 'Rescue',
          icon: Icons.local_hospital, 
          onPressed: () {
            Navigator.pushNamed(context, '/rescue');
          },
        ),
        _buildButton(
          title: 'Animal Care',
          icon: Icons.pets, 
          onPressed: () {
            Navigator.pushNamed(context, '/animal_care');
          },
        ),
        _buildButton(
          title: 'Consultation',
          icon: Icons.phone, 
          onPressed: () {
            Navigator.pushNamed(context, '/consultation');
          },
        ),
        _buildButton(
          title: 'Education',
          icon: Icons.book,
          onPressed: () {
            Navigator.pushNamed(context, '/education');
          },
        ),
        _buildButton(
          title: 'Lost and Found',
          icon: Icons.search,
          onPressed: () {
            Navigator.pushNamed(context, '/lost_and_found');
          },
        ),
        _buildButton(
          title: 'Community Forum',
          icon: Icons.forum,
          onPressed: () {
            Navigator.pushNamed(context, '/community_forum');
          },
        ),
      ],
    );
  }

  Widget _buildButton({
    required String title,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // add padding around each button
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(120, 120), // adjust the size of the button
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20), // increase the icon size
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 18)),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}