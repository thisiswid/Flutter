import 'package:flutter/material.dart';
import 'publish.dart'; // Import the PublishScreen

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Add New Book',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PublishScreen()),
                  );
                },
                child: Text(
                  'Publish',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Text(
                  'Add a cover',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Title',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Synopsis',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Genre:',
                  style: TextStyle(fontSize: 18),
                ),
                ElevatedButton(
                  onPressed: () {
                    _showGenreSelection(context);
                  },
                  child: Text('Select Genre'),
                ),
              ],
            ),
            SizedBox(
                height:
                    20), // Tambahkan jarak di antara Genre dan "Tap to add media"
            Container(
              height: 120,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Colors.grey.withOpacity(0.2),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        'Tap to add media',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height:
                    20), // Tambahkan jarak di antara "Tap to add media" dan TextField pertama
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Title of your story part',
              ),
            ),
            SizedBox(
                height:
                    20), // Tambahkan jarak di antara TextField pertama dan TextField kedua
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Tap here to start writing',
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showGenreSelection(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Column(
            children: [
              ListTile(
                title: Text('Romance'),
                onTap: () {
                  // Handle selection of 'Romance' genre
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Drama'),
                onTap: () {
                  // Handle selection of 'Drama' genre
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
