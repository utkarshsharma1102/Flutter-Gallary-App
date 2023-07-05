import 'package:design_layout/utils/img_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> staggeredImgList = [];
    for (int i = 0; i < imgPath.length; i++) {
      Widget customWidget = StaggeredGridTile.fit(
        crossAxisCellCount: 1,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(imgPath[i])),
      );
      staggeredImgList.add(customWidget);
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Gallery',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active,
                size: 36,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: staggeredImgList),
          ),
        ));
  }
}
