import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ku/model/adopt_pet.dart';

var informationTextStyle = TextStyle(fontFamily: 'Caveat', fontSize: 20.0,);

class DetailScreen extends StatelessWidget {
  final AdoptPet pet;

  DetailScreen({required this.pet});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(pet: pet);
        } else {
          return DetailMobilePage(pet: pet);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final AdoptPet pet;

  DetailMobilePage({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(pet.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                pet.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lobster',
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
                      Icon(Icons.calendar_today_rounded),
                      SizedBox(height: 8.0),
                      Text(
                        pet.age,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.speed_rounded),
                      SizedBox(height: 8.0),
                      Text(
                        pet.weight,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.pets_rounded),
                      SizedBox(height: 8.0),
                      Text(
                        pet.gender,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.location_city),
                      SizedBox(height: 8.0),
                      Text(
                        pet.loc,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                pet.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Caveat',
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: pet.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final AdoptPet pet;

  DetailWebPage({required this.pet});

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Adopt A Pet',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.pet.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 16),
                          Scrollbar(
                            isAlwaysShown: true,
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.pet.imageUrls.map((url) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(url),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
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
                              Container(
                                child: Text(
                                  widget.pet.name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Lobster',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.calendar_today_rounded),
                                      SizedBox(width: 8.0),
                                      Text(
                                        widget.pet.age,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  FavoriteButton(),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.speed_rounded),
                                  SizedBox(width: 8.0),
                                  Text(
                                    widget.pet.weight,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.pets_rounded),
                                  SizedBox(width: 8.0),
                                  Text(
                                    widget.pet.gender,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_city),
                                  SizedBox(width: 8.0),
                                  Text(
                                    widget.pet.loc,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.pet.description,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Caveat',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
