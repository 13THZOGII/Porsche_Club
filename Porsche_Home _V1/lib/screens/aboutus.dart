import 'package:flutter/material.dart';

void main() {
  runApp(const AboutUs());
}

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          title: Text("Porsche History", style: TextStyle(color: Colors.white, fontSize: 50),),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: const Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text(
                                    "Ferdinand Porsche (1875–1951) founded the company called Dr. Ing. h. c. F. Porsche"
                                        " GmbH with Adolf Rosenberger and Anton Piëch in 1931. The name is short for "
                                        "Ferdinand Porsche's full title in German, Doktor Ingenieur honoris causa."
                                        " 'Doctor of Engineering, Honorary Degree' Ferdinand Porsche. The main offices"
                                        " was at Kronenstraße 24 in the centre of Stuttgart. Initially, the company offered"
                                        " motor vehicle development work and consulting, but did not build any cars under "
                                        "its own name. One of the first assignments the new company received was from the German"
                                        " government to design a car for the people; that is, a Volkswagen. This resulted in the "
                                        "Volkswagen Beetle, one of the most successful car designs of all time. Later, the Porsche"
                                        " 64 would be developed in 1939 using many components from the Beetle."
                                        "                                                 "
                                        "The first models of what was to become the 356 were built in a small sawmill in Gmünd,"
                                        " Austria. The prototype car was shown to German auto dealers, and when pre-orders reached a "
                                        "set threshold, production (with aluminum body) was begun by Porsche Konstruktionen GesmbH, "
                                        "founded by Ferry and Louise. Many regard the 356 as the first Porsche simply because it was "
                                        "the first model sold by the fledgling company. After production of the 356 was taken over by "
                                        "the father's Dr. Ing. h.c. F. Porsche GmbH in Stuttgart in 1950, Porsche commissioned a "
                                        "Zuffenhausen-based company, Reutter Karosserie, which had previously collaborated with the "
                                        "firm on Volkswagen Beetle prototypes, to produce the 356's steel body. In 1952, Porsche "
                                        "constructed an assembly plant (Werk 2) across the street from Reutter Karosserie; the main road "
                                        "in front of Werk 1, the oldest Porsche building, is now known as Porschestrasse. The 356 was road-certified in 1948."
                                       , style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),

                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                )
            )
          ],
        )
    );
}
