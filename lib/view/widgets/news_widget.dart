import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String date;
  final String description;

  const NewsWidget({
    super.key,
    required this.imageUrl,
    required this.category,
    required this.date,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: size.height * 0.3,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(imageUrl))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * 0.03,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.red),
                    alignment: Alignment.center,
                    child: Text(
                      category,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Text(
                        date,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.02),
          child: Container(
            height: size.height * 0.1,
            width: size.width,
            color: Colors.black,
            child: Text(
              description,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
