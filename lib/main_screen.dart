import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_ku/detail_screen.dart';
import 'package:flutter_ku/model/adopt_pet.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Adopt A Pet'),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return AdoptList();
              } else if (constraints.maxWidth <= 1200) {
                return AdoptPetGrid(gridCount: 4);
              } else {
                return AdoptPetGrid(gridCount: 6);
              }
            },
          ),
        );
      },
    );
  }
}

class AdoptPetGrid extends StatelessWidget {
  final int gridCount;

  AdoptPetGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: adoptList.map((pet) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(pet: pet);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        pet.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        pet.name,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Lobster',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 16.0),
                      child: Text(
                        pet.breed,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Caveat',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class AdoptList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final AdoptPet pet = adoptList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(pet: pet);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(pet.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            pet.name,
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Lobster',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(pet.breed,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Caveat',
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: adoptList.length,
      ),
    );
  }
}
