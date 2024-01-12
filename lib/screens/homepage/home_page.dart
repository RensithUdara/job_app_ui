import 'package:flutter/material.dart';
import 'package:job_app_ui/screens/homepage/widgets/app_bar.dart';
import 'package:job_app_ui/screens/homepage/widgets/recent_column.dart';
import 'package:job_app_ui/services/get_data.dart';

import 'widgets/category_bar.dart';
import 'widgets/greetings_text.dart';
import 'widgets/popular_row.dart';
import 'widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData data = GetData();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 10,
                ),
                const GreetingsText(),
                const SizedBox(
                  height: 10,
                ),
                CustomSearchBar(size: size),
                const SizedBox(
                  height: 10,
                ),
                const CategoryBar(
                  title: "Popular Jobs",
                ),
                const SizedBox(
                  height: 10,
                ),
                PopularRow(data: data, size: size),
                const SizedBox(
                  height: 10,
                ),
                const CategoryBar(
                  title: "Recent Jobs",
                ),
                const SizedBox(
                  height: 10,
                ),
                RecentColumn(data: data)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
