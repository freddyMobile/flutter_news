import 'package:flutter/material.dart';
import 'package:flutter_news/controllers/news_controller.dart';
import 'package:flutter_news/models/news_model.dart';
import 'package:flutter_news/view/widgets/news_widget.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  List<NewsModel> searchedList = [];
  NewsController newsController = Get.find();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 187, 194, 247),
      appBar: AppBar(
        leadingWidth: size.width * 0.18,
        toolbarHeight: size.height * 0.1,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.2),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: Container(
          height: size.height * 0.04,
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.2)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              Container(
                width: size.width * 0.65,
                alignment: Alignment.center,
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      searchedList = newsController.newsList
                          .where((element) => element.title
                              .toLowerCase()
                              .contains(value.toLowerCase()))
                          .toList();
                    });
                  },
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  textAlignVertical: TextAlignVertical.center,
                  controller: searchController,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(bottom: size.height * 0.015),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => NewsWidget(
              imageUrl: searchedList[index].imageUrl,
              category: searchedList[index].category,
              date: searchedList[index].date,
              description: searchedList[index].description),
          itemCount: searchedList.length),
    );
  }
}
