import 'package:flutter/material.dart';

Padding ReadAlso(String url, String titlee, String dates, String viewcount) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(url),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              titlee,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70.0, top: 8.0),
          child: Row(
            children: [
              const Image(
                width: 10.0,
                height: 10.0,
                color: Colors.white,
                image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/109/109613.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                dates,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                width: 60.0,
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
                viewcount,
                style: const TextStyle(color: Colors.white, fontSize: 15.0),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.grey[800],
        ),
      ],
    ),
  );
}
