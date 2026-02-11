import 'package:flutter/material.dart';
import 'package:animated_book_widget/animated_book_widget.dart';

class PickUp extends StatefulWidget {
  const PickUp({super.key});

  @override
  State<PickUp> createState() => _PickUpState();
}

class _PickUpState extends State<PickUp> {
  int openedIndex = -1;

  final List<Map<String, dynamic>> pickUpBooks = [
    {
      'image': 'images/hobbit.png',
      'title': 'The Hobbit',
      'subtitle': 'Fantasy Adventure',
      'progress': 0.9,
    },
    {
      'image': 'images/dracula.png',
      'title': 'Dracula',
      'subtitle': 'Classic Horror',
      'progress': 0.6,
    },
    {
      'image': 'images/book.jpg',
      'title': 'Daily Habits',
      'subtitle': 'Self Growth',
      'progress': 0.75,
    },
    {
      'image': 'images/book.jpg',
      'title': 'Think Smart',
      'subtitle': 'Business & Mindset',
      'progress': 0.4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Pick up where you left',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: height * 0.015),

        SizedBox(
          height: height * 0.18,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: pickUpBooks.length,
            itemBuilder: (context, index) {
              final book = pickUpBooks[index];
              final progress = book['progress'] as double;

              return Padding(
                padding: EdgeInsets.only(right: width * 0.03),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.035),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: AnimatedBookWidget(
                            size: Size(width * 0.18, height * 0.18),
                            cover: Image.asset(
                              book['image'],
                              fit: BoxFit.contain,
                            ),
                            content: Container(
                              color: Colors.white,
                              alignment: Alignment.center,
                              child: Text(
                                book['title'],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),


                        SizedBox(width: width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              book['title'],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              book['subtitle'],
                              style: const TextStyle(fontSize: 12),
                            ),

                            SizedBox(height: height * 0.01),

                            Row(
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 100,
                                  child: Stack(
                                    alignment:
                                    Alignment.centerLeft,
                                    children: [
                                      Container(
                                        height: 6,
                                        width: double.infinity,
                                        decoration:
                                        BoxDecoration(
                                          color: Colors
                                              .grey.shade300,
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              10),
                                        ),
                                      ),
                                      FractionallySizedBox(
                                        widthFactor: progress,
                                        alignment: Alignment
                                            .centerLeft,
                                        child: Container(
                                          height: 6,
                                          decoration:
                                          BoxDecoration(
                                            gradient:
                                            const LinearGradient(
                                              colors: [
                                                Colors.blue,
                                                Colors.red
                                              ],
                                            ),
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                10),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(width: width * 0.015),
                                Text(
                                  '${(progress * 100).toInt()}%',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight:
                                    FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
