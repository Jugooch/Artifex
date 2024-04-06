import 'package:artifex/styling.dart';
import 'package:flutter/material.dart';

// Home Page
class ArtAlbums extends StatelessWidget {
final List<String> albumImages = [
    'https://source.unsplash.com/random/?white',
    'https://source.unsplash.com/random/?city',
    'https://source.unsplash.com/random/?fire',
    'https://source.unsplash.com/random/?white',
    'https://source.unsplash.com/random/?city',
    'https://source.unsplash.com/random/?fire',
    // Add more album image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png", width: 18),
        backgroundColor: AppColors.navBackground,
        foregroundColor: Colors.white,
      ),
      backgroundColor: AppColors.background,
      body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Albums", style: AppStyles.header1),
                IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.add),
                    style: AppStyles.iconBtn)
              ]),
              SizedBox(height: 32),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: albumImages.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AspectRatio(
                          aspectRatio:
                              1,
                          child: Container(
                            width: double
                                .infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: NetworkImage(albumImages[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text("Album Name",
                              style: AppStyles.paragraph,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}