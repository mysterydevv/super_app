import 'package:flutter/material.dart';
import 'package:flutter_movie/components/nav_bar.dart';

class NewsTile extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;

  const NewsTile({
    Key? key,
    required this.title,
    required this.content,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: const Text(""),
      leading: Image.network(imageUrl),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullNewsPage(
              title: title,
              content: content,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
    );
  }
}

class FullNewsPage extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;

  const FullNewsPage({
    Key? key,
    required this.title,
    required this.content,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(content),
            ),
          ],
        ),
      ),
    );
  }
}

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const NavBar(),
        appBar: const OwnAppBar(),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade900,
                Colors.blue.shade700,
                Colors.blue.shade500,
                Colors.blue.shade300,
              ],
            ),
          ),
          child: ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              return NewsTile(
                title: newsList[index]['title'] ?? '',
                content: newsList[index]['content'] ?? '',
                imageUrl: newsList[index]['imageUrl'] ?? '',
              );
            },
          ),
        ),
      ),
    );
  }
}

class OwnAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OwnAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        'Star Wars Episode IX News',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

List<Map<String, String>> newsList = [
  {
    'title':
        'Star Wars 9: Deleted Disney tweet fuels speculation of big twist',
    'content':
        "Star Wars 9 will undoubtedly feature plenty of surprises for fans that have been waiting years for the final chapter in the new trilogy, but one twist may have been revealed courtesy of a deleted tweet. The post in question came from the official Disneyland account. Fortunately, a keen-eyed fan was on hand to screenshot the message, which seems to be even more evidence that a former character will return in The Rise of Skywalker. Disneyland Resort’s Twitter account posted a photo of actor Hayden Christensen – best known as Anakin Skywalker – during a visit to the Star Wars: Galaxy’s Edge theme park.",
    'imageUrl':
        'https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/11/05/09/star-wars-episode-ix-the-rise-of-skywalker-poster-thumbnail.jpg?quality=75&width=640&auto=webp',
  },
  {
    'title':
        'Star Wars: Mark Hamill realises he made a rookie error during original Luke Skywalker audition',
    'content':
        'Mark Hamill has been filmed re-watching his original audition for the role of Luke Skywalker and was left embarrassed after realising he made a huge Star Wars error. The actor, who fans are hoping will return in Episode IX – The Rise of Skywalker, appeared in the video for Omaze in an attempt to raising funds for autism charity NAI. Moments in, he realised he fluffed a crucial character’s name during his first audition. Hamill pauses the tape after certain moments, providing context for fans. He can be seen acting opposite Harrison Ford, who is off-screen, when he refers to the Han Solo actor as "Hans".',
    'imageUrl':
        'https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/11/06/12/mark-hamill-star-wars-audition-tape-luke.png?quality=75&width=640&auto=webp',
  },
  {
    'title':
        'Star Wars 9: JJ Abrams reveals big way The Rise of Skywalker will differ from The Force Awakens',
    'content':
        'JJ Abrams has revealed one big way in which his new Star Wars film differs from The Force Awakens. The filmmaker, who oversaw the franchise’s cinematic return in 2015, signed up to direct The Rise of Skywalker after Jurassic World’s Colin Trevorrow stepped down. Abrams says he took more risks on the new film, which will be released in December, and attributes The Last Jedi director Rian Johnson with “reminding” him he was able to do so. “On this one, I let myself be, at least in the way I was approaching the thing, freer,” he told Total Film. “In Episode VII, I was adhering to a kind of approach that felt right for Star Wars in my head. It was about finding a visual language, like shooting on locations and doing practical things as much as possible. And we continue that in Episode IX, but I also found myself doing things that I’m not sure I would have been as daring to do on [The Force Awakens].”',
    'imageUrl':
        'https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/11/12/10/star-wars-the-force-awakens-rey-finn.jpg?quality=75&width=640&auto=webp',
  },
  {
    'title':
        'Star Wars: The Empire Strikes Back line that could predict Rise of Skywalker ending',
    'content':
        'A new Star Wars theory claims that Rey’s arrival in the franchise was foretold in The Empire Strikes Back. According to Reddit user Cheekywanquer, a line spoken by Yoda (Frank Oz) in the 1980 film predicted that Rey (Daisy Ridley) would play a huge part in the future of the galaxy decades before her introduction in 2015’s The Force Awakens. The line in question arrives during an interaction between the Jedi master and Obi-Wan Kenobi (Alec Guinness), the latter of whom believes Luke Skywalker (Mark Hamill) is their “last hope”.',
    'imageUrl':
        'https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/11/21/12/star-wars-yoda-empire-strikes-back.jpg?quality=75&width=640&auto=webp',
  },
];
