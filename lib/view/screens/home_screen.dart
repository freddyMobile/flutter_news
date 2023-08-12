import 'package:flutter/material.dart';
import 'package:flutter_news/controllers/news_controller.dart';
import 'package:flutter_news/view/screens/loading_screen.dart';
import 'package:flutter_news/view/screens/search_screen.dart';
import 'package:flutter_news/view/screens/single_news_screen.dart';
import 'package:flutter_news/view/widgets/carousel_widget.dart';
import 'package:flutter_news/view/widgets/news_widget.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  NewsController newsController = Get.put(NewsController());
  String selectedField = "Caliber.az";

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then(
      (value) async {
        showDialog(
          context: context,
          builder: (context) {
            return const LoadingScreen();
          },
        );

        await newsController
            .fetchAllNews()
            .then((value) => Navigator.of(context).pop());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
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
            Text(
              selectedField,
              style: const TextStyle(color: Colors.white, fontSize: 24),
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
              onPressed: () {
                Get.to(() => const SearchScreen());
              },
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                    setState(() {
                      selectedField = "Caliber.az";
                    });
                  },
                  child: Image.network(
                    'https://cdn.caliber.az/media/photos/normal/standart.jpeg',
                    fit: BoxFit.cover,
                  ),
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
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              const Divider(),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  //Get.to
                },
                child: ListTile(
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
                    setState(() {
                      selectedField = "POLITICS";
                    });
                  },
                ),
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
                  setState(() {
                    selectedField = "KARABAKH";
                  });
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
                  setState(() {
                    selectedField = "ECONOMICS";
                  });
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
                  newsController.fetchAllNews();
                  setState(() {
                    selectedField = "ANALYTICS";
                  });
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
                  setState(() {
                    selectedField = "INTERVIEWS";
                  });
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
                  setState(() {
                    selectedField = "MULTIMEDİA";
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: Obx(() {
        return RefreshIndicator(
          displacement: size.height * 0.2,
          onRefresh: () {
            return newsController.fetchAllNews();
          },
          child: newsController.isLoading.value
              ? const LoadingScreen()
              : SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: size.height * 0.1),
                  child: Column(
                    children: [
                      if (selectedField == "Caliber.az")
                        SizedBox(
                          height: size.height * 0.85,
                          child: PageView(
                            scrollDirection: Axis.horizontal,
                            children: newsController.newsSlider
                                .map((e) => InkWell(
                                      onTap: () {
                                        Get.to(() => SingleNewsScreen(
                                            body: e.body,
                                            category: e.category,
                                            date: e.date,
                                            imageUrl: e.imageUrl,
                                            viewCount: e.viewCount,
                                            description: e.description));
                                      },
                                      child: CarouselWidgeet(
                                        description: e.description,
                                        category: e.category,
                                        date: e.date,
                                        imageUrl: e.imageUrl,
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      Column(
                        children: newsController.newsList
                            .where((element) {
                              if (selectedField == "Caliber.az") {
                                return true;
                              } else if (selectedField != "Caliber.az" &&
                                  element.category !=
                                      selectedField.toLowerCase()) {
                                return false;
                              }
                              return true;
                            })
                            .map((e) => InkWell(
                                  onTap: () {
                                    Get.to(() => SingleNewsScreen(
                                        body: e.body,
                                        category: e.category,
                                        date: e.date,
                                        imageUrl: e.imageUrl,
                                        viewCount: e.viewCount,
                                        description: e.description));
                                  },
                                  child: NewsWidget(
                                    description: e.description,
                                    category: e.category,
                                    date: e.date,
                                    imageUrl: e.imageUrl,
                                  ),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
        );
      }),
    );
  }
}
