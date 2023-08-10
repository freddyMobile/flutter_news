import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';

class SpecificScreen extends StatefulWidget {
  const SpecificScreen({super.key});

  @override
  State<SpecificScreen> createState() => _SpecificScreenState();
}

class _SpecificScreenState extends State<SpecificScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.grey,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              icon: const Icon(
                Icons.apps,
                size: 35,
              )),
          centerTitle: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Caliber.az',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(
                width: size.width,
                height: size.height * 0.03,
                child: Marquee(
                    scrollAxis: Axis.horizontal,
                    text:
                        'Regionun ən keyfiyyətli app-i bizdədir.Bunun üçün də müntəzəm olaraq xəbərlərimizi izləyin!'),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35,
                )),
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: const Color.fromARGB(255, 92, 129, 76),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(0, 25, 98, 5),
                  ),
                  child: Image.network(
                    'https://cdn.caliber.az/media/photos/normal/standart.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.star_border_rounded),
                  title: const Text('TOP NEWS         →',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  textColor: const Color.fromARGB(190, 255, 255, 255),
                  subtitle: const Text('The most read news',
                      style: TextStyle(fontSize: 15, color: Colors.white70)),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(height: 20),
                ListTile(
                  leading: const Icon(Icons.window),
                  title: const Text('POLITICS        →',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  textColor: const Color.fromARGB(190, 255, 255, 255),
                  subtitle: const Text(
                      'The most important news of political life in Azerbaijan',
                      style: TextStyle(fontSize: 14, color: Colors.white70)),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.window),
                  title: const Text('KARABAKH 🇦🇿   →',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  textColor: const Color.fromARGB(190, 255, 255, 255),
                  subtitle: const Text(
                      'News about Karabakh and the processes that are related to tihs topic',
                      style: TextStyle(fontSize: 14, color: Colors.white70)),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                const Divider(),
                const SizedBox(height: 5),
                ListTile(
                  leading: const Icon(Icons.window),
                  title: const Text('ECONOMICS      →',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  textColor: const Color.fromARGB(190, 255, 255, 255),
                  subtitle: const Text(
                      'The most important news of ecenomy in Azerbaijan',
                      style: TextStyle(fontSize: 14, color: Colors.white70)),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                const Divider(),
                const SizedBox(height: 5),
                ListTile(
                  leading: const Icon(Icons.window_sharp),
                  title: const Text('ANALYTICS        →',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  textColor: const Color.fromARGB(190, 255, 255, 255),
                  subtitle: const Text(
                      'Analytical materials of the authors of Caliber.az',
                      style: TextStyle(fontSize: 14, color: Colors.white70)),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                const Divider(),
                const SizedBox(height: 5),
                ListTile(
                  leading: const Icon(Icons.window),
                  title: const Text('INTERVIEWS      →',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  textColor: const Color.fromARGB(190, 255, 255, 255),
                  subtitle: const Text(
                      'Exclusive interviews with various interestig personalities',
                      style: TextStyle(fontSize: 14, color: Colors.white70)),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                const Divider(),
                const SizedBox(height: 5),
                ListTile(
                  leading: const Icon(Icons.window),
                  title: const Text('MULTIMEDİA          →',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  textColor: const Color.fromARGB(190, 255, 255, 255),
                  subtitle: const Text(
                      'Pieces of news related photo and video content are published in the multimedia section',
                      style: TextStyle(fontSize: 14, color: Colors.white70)),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
