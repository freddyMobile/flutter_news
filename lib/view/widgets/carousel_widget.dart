import 'package:flutter/material.dart';

class CarouselWidgeet extends StatelessWidget {
  const CarouselWidgeet({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.13,
          width: size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 45, 49, 72),
            Color.fromARGB(255, 61, 63, 72)
          ])),
        ),
        Container(
          width: size.width,
          height: size.height * 0.35,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://media.cnn.com/api/v1/images/stellar/prod/230808095352-lavrov-wang-yi-moscow-file.jpg?c=16x9&q=h_720,w_1280,c_fill/f_webp'))),
        ),
        Stack(
          children: [
            Container(
              height: size.height * 0.25,
              width: size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 65, 65, 65),
                Color.fromARGB(96, 83, 72, 72)
              ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          const Text(
                            '07 Avqust 2023-16:07',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        height: size.height * 0.03,
                        width: size.width * 0.25,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: const Text(
                          'Interviews',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    'War until the next election',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    width: size.width * 0.8,
                    height: size.height * 0.04,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    alignment: Alignment.center,
                    child: const Text(
                      'Zuckememensidjs',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Container(
          height: size.height * 0.08,
          width: size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.grey, Colors.black])),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.newspaper,
                color: Colors.red,
                size: 40,
              ),
              Text(
                'NEWS FEED',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
