import 'package:flutter/material.dart';
import 'package:top10sport/detail_screen.dart';
import 'package:top10sport/model/tourism_place.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Sport> filteredPlaces = sportList;
  String query = '';

  void _updateSearch(String value) {
    setState(() {
      query = value;
      filteredPlaces = sportList.where((place) {
        return place.name.toLowerCase().startsWith(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        leading: const Icon(
          Icons.sort,
          size: 30.0,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Discover",
              style: TextStyle(
                fontFamily: "coolvetica",
                fontSize: 40,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            const Text(
              "Temukan tempat terbaik untuk olahraga.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "mau cari apa?",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                    onChanged: _updateSearch,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search, color: Colors.grey),
                  onPressed: () {
                    // Menyimpan perubahan dan melakukan pencarian
                    _updateSearch(query);
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraint) {
                  if (filteredPlaces.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/shock.png',
                              width: 300), // Ganti dengan path gambar Anda

                          Text(
                            'Tidak ada hasil',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.grey,
                                fontFamily: 'coolvetica'),
                          ),
                          SizedBox(
                            height: 90,
                          )
                        ],
                      ),
                    );
                  } else if (constraint.maxWidth <= 600) {
                    return SportList(places: filteredPlaces);
                  } else if (constraint.maxWidth <= 1200) {
                    return TourismPlaceGrid(
                        places: filteredPlaces, gridCount: 4);
                  } else {
                    return TourismPlaceGrid(
                        places: filteredPlaces, gridCount: 6);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SportList extends StatelessWidget {
  final List<Sport> places;

  SportList({required this.places});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Sport place = places[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12.0),
                  ),
                  child: Image.asset(
                    place.imageAsset,
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                    height: 200, // Sesuaikan tinggi gambar agar tidak overflow
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.name,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(place.creator),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: places.length,
    );
  }
}


class TourismPlaceGrid extends StatelessWidget {
  final List<Sport> places;
  final int gridCount;

  TourismPlaceGrid({required this.places, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: places
              .map((place) => InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(place: place);
                      }));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12.0)),
                            child: Image.asset(
                              place.imageAsset,
                              fit: BoxFit.fitWidth, // Gambar sesuai dengan lebar item grid tanpa terpotong
                              width: double.infinity,
                              height: 150, // Tentukan tinggi gambar jika diperlukan
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  place.name,
                                  style: TextStyle(
                                      fontSize: 16.0, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(place.creator),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
