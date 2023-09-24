import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff323232),
          leading: IconButton(
            icon: Icon(
              Icons.home,
              color: Color(0xffffffff),
            ),
            onPressed: () {
              // Add your home button functionality here.
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Color(0xffffffff),
              ),
              onPressed: () {
                // Add your functionality for the right side action button here.
              },
            ),
          ],
          title: Center(
            child: Text(
              "Breaking News",
              style: TextStyle(color: Color(0xffffffff)),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://i.ytimg.com/vi/R0-oF5TG1vU/maxresdefault.jpg",
                    width:
                        50, // Sesuaikan ukuran gambar lingkaran sesuai kebutuhan
                    height: 50,
                    fit: BoxFit
                        .cover, // Menampilkan gambar sesuai dengan lingkaran
                  ),
                ),
                title: Text(
                  "Reiki Syah",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  'He is the Most Handsome Human.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
