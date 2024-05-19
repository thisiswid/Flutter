import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(top: 5, right: 0),
          child: IconButton(
            icon: Icon(
              Icons.menu_outlined,
              size: 30,
            ),
            onPressed: () {
              // Fungsi untuk menangani ketika ikon menu diklik
              // Tambahkan logika sesuai kebutuhan
            },
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 16),
          child: Image(
            alignment: Alignment.centerRight,
            image: AssetImage('assets/images/logonav.png'),
            width: 135,
          ),
        ),
        centerTitle: false,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 158, 198, 231),
                  Color.fromARGB(255, 14, 141, 219),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/pic.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Eve Florista',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '@evee',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 18), // Add space between texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '4',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'WORKS',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 100),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '1000',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'FOLLOWERS',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'ੈ✩‧₊˚ to those who read my stories ✧ ೃ༄*ੈ✩ tysm for supporting an inconsistent, unstable writer who\'s just getting around in life *ੈ✩‧₊˚',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Text(
                'Stories by evee',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '4 Published',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Add space
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                _buildBookItem('assets/images/buku1.png', 'Dandadan', '4.7'),
                SizedBox(width: 10),
                _buildBookItem(
                    'assets/images/buku2.png', 'Seperti Dendam', '4.8'),
                SizedBox(width: 10),
                _buildBookItem('assets/images/buku3.png', 'About Nada', '4.5'),
                SizedBox(width: 10),
                _buildBookItem('assets/images/buku4.png', 'Sesuap Rasa', '4.6'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookItem(String imagePath, String bookName, String rating) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 80,
          height: 120,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 8),
        Text(
          bookName,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 16,
            ),
            SizedBox(width: 4),
            Text(
              rating,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
