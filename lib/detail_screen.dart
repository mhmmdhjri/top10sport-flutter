import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:top10sport/model/tourism_place.dart'; // Import for debugPrint


var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final Sport place;

  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailScreenWeb(place: place);
      } else {
        return DetailScreenMobile(place: place);
      }
    });
  }
}

class DetailScreenMobile extends StatelessWidget {
  final Sport place;

  DetailScreenMobile({required this.place});

  @override
  Widget build(BuildContext context) {
    // Print the imageUrls for debugging
    debugPrint(place.imageUrls.toString());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: [
                Image.asset(place.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ))),
                        FavoriteButton()
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text(
                        place.teams,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text(
                        place.creator,
                        style: informationTextStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            // Container(
            //   height: 150,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: place.imageUrls.map((url) {
            //       return Padding(
            //         padding: const EdgeInsets.all(4.0),
            //         child: ClipRRect(
            //           borderRadius: BorderRadius.circular(10),
            //           child: Image.network(url),
            //         ),
            //       );
            //     }).toList(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class DetailScreenWeb extends StatefulWidget {
  final Sport place;

  DetailScreenWeb({required this.place});

  @override
  _DetailScreenWebState createState() => _DetailScreenWebState();
}

class _DetailScreenWebState extends State<DetailScreenWeb> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 64),
        child: Center(
          child: Container(
            width: 1200,
            child: Column(
              children: [
                Text(
                  "Worldsport",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(widget.place.imageAsset),
                          ),
                          SizedBox(height: 16),
                          
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                widget.place.name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Staatliches',
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.calendar_today),
                                      SizedBox(width: 8.0),
                                      Text(
                                        widget.place.teams,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  FavoriteButton(),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.access_time),
                                  SizedBox(width: 8.0),
                                  Text(
                                    widget.place.creator,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.place.description,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
    );
  }
}
