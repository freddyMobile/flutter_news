import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/read_also.dart';

class SingleNewsScreen extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String date;
  final int viewCount;
  final String description;
  final String body;
  const SingleNewsScreen({
    super.key,
    required this.body,
    required this.category,
    required this.date,
    required this.imageUrl,
    required this.viewCount,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const FaIcon(FontAwesomeIcons.arrowLeft),
          ),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const FaIcon(FontAwesomeIcons.heart),
        //   ),
        //   const Padding(
        //     padding: EdgeInsets.all(15.0),
        //     child: Icon(Icons.share),
        //   ),
        // ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 200),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.redAccent[700],
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(80))),
                            ),
                            onPressed: () {},
                            child: Text(
                              category,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Image(
                            width: 13.0,
                            height: 13.0,
                            color: Colors.white,
                            image: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/512/109/109613.png'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            date,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(
                            width: 130,
                          ),
                          const Image(
                              width: 13.0,
                              height: 13.0,
                              color: Colors.white,
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/512/709/709612.png')),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            viewCount.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15.0),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      description,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      body,
                      style: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 700,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.grey.withOpacity(0.4),
                            Colors.transparent,
                          ],
                          stops: const [
                            0.0,
                            0.9
                          ])),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 90,
                            ),
                            Image(
                                width: 45.0,
                                height: 45.0,
                                // color: Colors.red[900],
                                image: NetworkImage(
                                    'https://cdn-icons-png.flaticon.com/512/3272/3272616.png')),
                            Text(
                              'READ ALSO',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      ReadAlso(
                          'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2023%2F06%2Felon-musk-mark-zuckerberg-practicing-bjj-pictures-info-000.jpg?fit=max&cbr=1&q=90&w=750&h=500',
                          'Musk says fight with Zuckberg\nto be live-streamed on X',
                          '06 August 2023 - 13:46',
                          '5'),
                      ReadAlso(
                          'https://old.iranintl.com/sites/default/files/styles/articles_landing/public/ccccccccccc.jpg?itok=Dzw3yQ0M',
                          'Iranian foreign minister eyeing\nJapan visit to meet Kishida',
                          '06 August 2023 - 13:22',
                          '6'),
                      ReadAlso(
                          'https://cdn.images.express.co.uk/img/dynamic/1/750x445/1507099.jpg',
                          'UK Intelligence: Russia loses\nat least 50% of its \nparatroopers in Ukraine',
                          '06 August 2023 - 13:22',
                          '9'),
                      ReadAlso(
                          'https://gdb.voanews.com/43699127-5845-4B6D-98DE-BA0A98920DEF_w408_r1_s.jpg',
                          'Japan condemns Russia\nnuclear threat on Hiroshima\nanniversary',
                          '06 August 2023 - 13:22',
                          '12'),
                      ReadAlso(
                          'https://static.standard.co.uk/2023/08/04/14/game4ukraine050823.jpg?width=1200',
                          'Game4Ukraine - Team\nShevchenko 2-2 Team',
                          '06 August 2023 - 13:22',
                          '23'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
