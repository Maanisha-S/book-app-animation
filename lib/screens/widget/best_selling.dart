import 'package:flutter/material.dart';
import 'book_reader_page.dart';

class BestSelling extends StatelessWidget {
  BestSelling({super.key});

  final List<String> bestSellingBooks = [
    'images/to kill a mockingbird.png',
    'images/book thief.png',
    'images/great gatsby.png',
    'images/1984.png',
    'images/catcher in the rye.png'
  ];

  final List<String> bookTitles = [
    'To Kill a Mockingbird',
    'The Book Thief',
    'The Great Gatsby',
    '1984',
    'The Catcher in the Rye',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Best Selling',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: height * 0.02),
        SizedBox(
          height: height * 0.25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bestSellingBooks.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BookReaderPage(
                        title: bookTitles[index],
                        pages: getBookPages(bookTitles[index]),
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.04),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      bestSellingBooks[index],
                      width: width * 0.35,
                      fit: BoxFit.cover,
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

  List<String> getBookPages(String title) {
    return [
      // PAGE 1
      "$title\n\n"
          "When he was nearly thirteen, my brother Jem got his arm badly broken at the"
    "elbow. When it healed, and Jem’s fears of never being able to play football were"
   " assuaged, he was seldom self-conscious about his injury. His left arm was"
    "somewhat shorter than his right; when he stood or walked, the back of his hand"
   " was at right angles to his body, his thumb parallel to his thigh. He couldn’t have"
   " cared less, so long as he could pass and punt.\n\n"
    "When enough years had gone by to enable us to look back on them, we"
    "sometimes discussed the events leading to his accident. I maintain that the Ewells"
    "started it all, but Jem, who was four years my senior, said it started long before"
    "that. He said it began the summer Dill came to us, when Dill first gave us the idea"
    "of making Boo Radley come out.\n\n"
   " I said if he wanted to take a broad view of the thing, it really began with Andrew"
    "Jackson. If General Jackson hadn’t run the Creeks up the creek, Simon Finch"
    "would never have paddled up the Alabama, and where would we be if he hadn’t?"
    "The Radley Place fascinated Dill. In spite of our warnings and explanations it"
    "drew him as the moon draws water, but drew him no nearer than the light-pole on"
   " the corner, a safe distance from the Radley gate. There he would stand, his arm"
    "around the fat pole, staring and wondering.",

      // PAGE 2
      "We were far too old to settle an argument with a fist-fight, so we consulted"
      "Atticus. Our father said we were both right.\n\n"
      "Being Southerners, it was a source of shame to some members of the family that"
      "we had no recorded ancestors on either side of the Battle of Hastings. All we had"
      "was Simon Finch, a fur-trapping apothecary from Cornwall whose piety was"
      "exceeded only by his stinginess. In England, Simon was irritated by the"
     " persecution of those who called themselves Methodists at the hands of their more"
     " liberal brethren, and as Simon called himself a Methodist, he worked his way"
    "across the Atlantic to Philadelphia, thence to Jamaica, thence to Mobile, and up"
    "the Saint Stephens. Mindful of John Wesley’s strictures on the use of many words"
   " in buying and selling, Simon made a pile practicing medicine, but in this pursuit"
    "he was unhappy lest he be tempted into doing what he knew was not for the glory"
    "of God, as the putting on of gold and costly apparel. So Simon, having forgotten"
    "his teacher’s dictum on the possession of human chattels, bought three slaves and"
    "with their aid established a homestead on the banks of the Alabama River some"
   " forty miles above Saint Stephens. He returned to Saint Stephens only once, to find"
    "a wife, and with her established a line that ran high to daughters. Simon lived to"
    "an impressive age and died rich.",

      // PAGE 3
      "It was customary for the men in the family to remain on Simon’s homestead,"
    "Finch’s Landing, and make their living from cotton. The place was self-sufficient:"
   " modest in comparison with the empires around it, the Landing nevertheless"
    "produced everything required to sustain life except ice, wheat flour, and articles"
    "of clothing, supplied by river-boats from Mobile.\n\n"
    "Simon would have regarded with impotent fury the disturbance between the North"
    "and the South, as it left his descendants stripped of everything but their land, yet"
    "the tradition of living on the land remained unbroken until well into the twentieth"
   " century, when my father, Atticus Finch, went to Montgomery to read law, and his"
    "younger brother went to Boston to study medicine. she married a taciturn man who spent most"
    "of his time lying in a hammock by the river wondering if his trot-lines were full.\n\n"
    "When my father was admitted to the bar, he returned to Maycomb and began his"
    "practice. Maycomb, some twenty miles east of Finch’s Landing, was the county"
    "seat of Maycomb County. Atticus’s office in the courthouse contained little more"
    "than a hat rack,a checkerboard and an unsullied Code of Alabama. His"
    "first two clients were the last two persons hanged in the Maycomb County jail."
    "Atticus had urged them to accept the state’s generosity in allowing them to plead"
    "Guilty to second-degree murder and escape with their lives, but they were"
   " Haverfords, in Maycomb County a name synonymous with jackass.",



      // PAGE 4
        " The Haverfords had dispatched Maycomb’s leading blacksmith in a misunderstanding"
         "arising from the alleged wrongful detention of a mare, were imprudent enough to"
          "do it in the presence of three witnesses, and insisted that the-son-of-a-bitch-had-itcoming-to-him was a good enough defense for anybody. They persisted in"
          "pleading Not Guilty to first-degree murder, so there was nothing much Atticus"
          " could do for his clients except be present at their departure, an occasion that was"
          "probably the beginning of my father’s profound distaste for the practice of"
          "criminal law.\n\n"
    "During his first five years in Maycomb, Atticus practiced economy more than"
    "anything; for several years thereafter he invested his earnings in his brother’s"
    "education. John Hale Finch was ten years younger than my father, and chose to"
    "study medicine at a time when cotton was not worth growing; but after getting"
    "Uncle Jack started, Atticus derived a reasonable income from the law. He liked"
    "Maycomb, he was Maycomb County born and bred; he knew his people, they"
    "knew him, and because of Simon Finch’s industry, Atticus was related by blood"
    "or marriage to nearly every family in the town.\n\n"
    "Maycomb was an old town, but it was a tired old town when I first knew it. In"
    "rainy weather the streets turned to red slop; grass grew on the sidewalks, the"
    "courthouse sagged in the square.",


      // PAGE 5
      "Somehow, it was hotter then: a black dog"
    "suffered on a summer’s day; bony mules hitched to Hoover carts flicked flies in"
    "the sweltering shade of the live oaks on the square. Men’s stiff collars wilted by"
    "nine in the morning. Ladies bathed before noon, after their three-o’clock naps,"
    "and by nightfall were like soft teacakes with frostings of sweat and sweet talcum.\n\n"
    "People moved slowly then. They ambled across the square, shuffled in and out of"
    "the stores around it, took their time about everything. A day was twenty-four"
    "hours long but seemed longer. There was no hurry, for there was nowhere to go,"
    "nothing to buy and no money to buy it with, nothing to see outside the boundaries"
    "of Maycomb County. But it was a time of vague optimism for some of the people:"
    "Maycomb County had recently been told that it had nothing to fear but fear itself.\n\n"
    "We lived on the main residential street in town— Atticus, Jem and I, plus"
    "Calpurnia our cook. Jem and I found our father satisfactory: he played with us,"
    "read to us, and treated us with courteous detachment.\n\n"
   " Calpurnia was something else again. She was all angles and bones; she was"
   " nearsighted; she squinted; her hand was wide as a bed slat and twice as hard. She"
    "was always ordering me out of the kitchen, asking me why I couldn’t behave as"
    "well as Jem when she knew he was older, and calling me home when I wasn’t"
    "ready to come. Our battles were epic and one-sided. Calpurnia always won,"
   " because Atticus always took her side.",
    ];
  }


}
