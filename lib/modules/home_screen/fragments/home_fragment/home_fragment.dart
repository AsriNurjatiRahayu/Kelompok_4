import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kelompok4/configs/app_routes.dart';
import 'package:kelompok4/models/user.dart';
import 'package:kelompok4/modules/home_screen/fragments/home_fragment/home_fragment_widgets.dart';

import '../../../../models/news.dart';

// masukan home fragment widget

class HomeFragment extends StatefulWidget {
  const HomeFragment({
    super.key,
    required this.user,
    required this.hotesNews, 
    required this.latesNews,  
    required this.homeScaffold,
  });

  final User user;
  final News hotesNews; 
  final List<News> latesNews; 
  final GlobalKey<ScaffoldState> homeScaffold;

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: HomeFragmentWidget.header(
              user: widget.user,
              homeScaffoldState: widget.homeScaffold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: HomeFragmentWidget.searchField(),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: HomeFragmentWidget.sectionTitle(
                      "Hotest News",
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: HomeFragmentWidget.hotestNewsCard(
                      size,
                      // masukan berita terbaru dan url gambarnya
                      widget.hotesNews.imageUrl,
                      widget.hotesNews.title,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SectionTitle(
                      label: "Latest News",
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: HomeFragmentWidget.latestNewsSection(
                      size,
                      widget.latesNews
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
