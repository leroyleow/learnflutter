import 'package:flutter/material.dart';

String baconText = '''
Bacon ipsum dolor amet andouille spare ribs chuck shank shankle. Burgdoggen pastrami hamburger, pork belly corned beef shoulder beef. Pig t-bone buffalo, shoulder ground round meatball chislic. Cupim kevin andouille, flank alcatra spare ribs ham tenderloin frankfurter leberkas hamburger bresaola. Andouille short ribs tri-tip ham hock ham salami.

Kevin landjaeger boudin picanha chicken, sirloin rump chuck hamburger kielbasa. Biltong chicken picanha leberkas. Cupim shoulder rump, shankle chicken flank short ribs. T-bone short loin cupim tenderloin shank beef ribs, pork loin pork chop kevin. Ham beef pancetta shoulder doner burgdoggen biltong tri-tip. Prosciutto short ribs shankle beef capicola. Strip steak jerky tongue boudin rump cow venison chicken bacon pork belly filet mignon ball tip pancetta spare ribs sirloin.

Doner salami shoulder tri-tip, kevin alcatra swine capicola brisket venison turducken. Short loin salami capicola spare ribs pig hamburger swine biltong pork loin rump picanha beef ribs tenderloin ground round. Pork fatback landjaeger pastrami frankfurter biltong meatloaf bacon. Short loin boudin spare ribs chislic shankle hamburger picanha drumstick.

Sausage frankfurter prosciutto picanha, tenderloin short ribs pork belly kielbasa. Andouille fatback tail buffalo, drumstick tri-tip sirloin tongue turkey. Spare ribs salami shankle rump tongue pork loin. Salami doner beef corned beef, ribeye shank drumstick pork chop pancetta filet mignon bresaola jowl sausage capicola hamburger. Filet mignon chicken capicola chislic shank, short ribs salami fatback. Pork belly boudin rump brisket ham buffalo jerky hamburger filet mignon. Turkey sausage kielbasa chuck.
''';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    //received information
    required this.title,
    required this.imagePath,
  });

  //set information
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Image.asset(imagePath),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              baconText,
              style: const TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            ),
          ]),
        ),
      ),
    );
  }
}
