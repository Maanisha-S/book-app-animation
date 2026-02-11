import 'package:book_app/screens/widget/book_card.dart';
import 'package:book_app/screens/widget/category_list.dart';
import 'package:flutter/material.dart';
import 'package:paperfold_list/paperfold_list.dart';

class TypesCard extends StatefulWidget {
  const TypesCard({super.key});

  @override
  State<TypesCard> createState() => _TypesCardState();
}

class _TypesCardState extends State<TypesCard> {
  bool isExpanded = false;

  final List<Map<String, dynamic>> books = [
    {
      'image': 'images/city of girls.png',
      'title': 'City of Girls',
      'author': 'Elizabeth Gilbert',
      'description': 'Told from the perspective...',
      'rating': 4.8,
    },
    {
      'image': 'images/gone girl.png',
      'title': 'Gone Girl',
      'author': 'Gillian Flynn',
      'description': 'A dark mystery...',
      'rating': 4.5,
    },
    {
      'image': 'images/diamond chariot.png',
      'title': 'The Diamond Chariot',
      'author': 'Boris Akunin',
      'description': 'Historical mystery...',
      'rating': 4.7,
    },
    {
      'image': 'images/alchemist.png',
      'title': 'The Alchemist',
      'author': 'Paulo Coelho',
      'description': 'Philosophical journey...',
      'rating': 4.8,
    },
    {
      'image': 'images/sherlock holmes.png',
      'title': 'Sherlock Holmes',
      'author': 'Arthur Conan Doyle',
      'description': 'Detective adventures...',
      'rating': 4.9,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    final middleBooks =
    books.length > 2 ? books.sublist(1, books.length - 1) : [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         CategoryList(),
        SizedBox(height: height * 0.02),
        BookCard(
          image: books.first['image'],
          title: books.first['title'],
          author: books.first['author'],
          description: books.first['description'],
          rating: books.first['rating'],
        ),

        const SizedBox(height: 12),
        if (middleBooks.isNotEmpty)
          PaperfoldList(
            itemExtent: 130,
            targetUnfold: isExpanded ? 1.0 : 0.0,
            axis: PaperfoldAxis.vertical,
            axisSize: PaperfoldAxisSize.min,
            axisAlignment: PaperfoldAxisAlignment.start,
            animationDuration: const Duration(milliseconds: 500),
            animationCurve: Curves.easeInOut,
            perspective: 0.0015,
            firstChildFoldsInward: true,
            unmountOnFold: true,
            interactionUnfoldThreshold: 1.0,
            effect:  PaperfoldShadeEffect(),
            children: middleBooks.map((book) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: BookCard(
                  image: book['image'],
                  title: book['title'],
                  author: book['author'],
                  description: book['description'],
                  rating: book['rating'],
                ),
              );
            }).toList(),
          ),

        const SizedBox(height: 12),
        if (books.length > 1)
          BookCard(
            image: books.last['image'],
            title: books.last['title'],
            author: books.last['author'],
            description: books.last['description'],
            rating: books.last['rating'],
          ),

        SizedBox(height: height * 0.02),
        Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? "Show Less ▲" : "Show More ▼",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.brown,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
