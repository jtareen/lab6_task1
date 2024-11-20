import 'package:flutter/material.dart';

class ResponsiveGridScreen extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/images/image01.jpeg',
    'assets/images/image02.jpeg',
    'assets/images/image03.jpeg',
    'assets/images/image04.jpeg',
    'assets/images/image05.jpeg',
    'assets/images/image06.jpeg',
    'assets/images/image07.jpeg',
    'assets/images/image08.jpeg',
    'assets/images/image09.jpeg',
    'assets/images/image10.jpeg',
    'assets/images/image11.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Grid Layout', style: TextStyle(fontWeight: FontWeight.w600),),
        centerTitle: true,
        elevation: 5.0,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            int columns = (constraints.maxWidth / 150).floor();
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  imageUrls[index],
                  fit: BoxFit.cover,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
