import 'package:flutter/material.dart';
import 'package:page_flip/page_flip.dart';

class BookReaderPage extends StatelessWidget {
  final String title;
  final List<String> pages;

  BookReaderPage({
    super.key,
    required this.title,
    required this.pages,
  });

  final GlobalKey<PageFlipWidgetState> _controller =
  GlobalKey<PageFlipWidgetState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffE8DDC7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 1.2,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: PageFlipWidget(
        key: _controller,
        backgroundColor: const Color(0xffE8DDC7),
        children: List.generate(
          pages.length,
              (index) => _buildPremiumPage(
            pages[index],
            index + 1,
                height
          ),
        ),
      ),
    );
  }

  Widget _buildPremiumPage(String content, int pageNumber,var height) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xffFFFDF7),
            Color(0xffF6EFE3),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 25,
            offset: Offset(8, 12),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(36, 50, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "CHAPTER 1",
              style: TextStyle(
                fontSize: 15,
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
                color: Colors.brown,
              ),
            ),

            const SizedBox(height: 28),
            Expanded(
              child: Text(
                content,
                textAlign: TextAlign.justify,
                style:  TextStyle(
                  fontSize: 12,
                  height: height * 0.002,
                  color: Colors.black87,
                  letterSpacing: 0.3,
                ),
              ),
            ),

            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Text(
                "— $pageNumber —",
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black45,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
