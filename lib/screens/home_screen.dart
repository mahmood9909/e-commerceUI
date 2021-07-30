import 'package:flutter/material.dart';
import 'package:youtubetutorialapp1/provider/app_data.dart';
import 'package:youtubetutorialapp1/widget/custom_slider.dart';
import '../theme/colors.dart';

class HomePage extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(homeImg), fit: BoxFit.cover)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    size: 28,
                  ),
                  color: white,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 28,
                    ),
                    color: white,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Winter Collection",
                    style: TextStyle(
                        fontSize: 25,
                        color: white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "  Discover",
                        style: TextStyle(
                            fontSize: 18,
                            color: white,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                        color: white,
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Catgories",
                  style: TextStyle(
                      fontSize: 25, color: black, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Text("All"),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                    color: black,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 260,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    print(index);
                  },
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        height: 220,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    categories[index]['imgUrl'].toString()),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        height: 220,
                        width: 160,
                        decoration: BoxDecoration(
                            color: black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 20,
                          child: Text(
                            categories[index]['title'].toString(),
                            style: TextStyle(
                                color: white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                );
              },
              itemCount: categories.length,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Recommendation",
                  style: TextStyle(
                      fontSize: 25, color: black, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Text("All"),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                    color: black,
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 350,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    print(index);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: 200,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        recommends[index]['imgUrl'].toString()),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: 200,
                            width: 160,
                            decoration: BoxDecoration(
                                color: black.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 5),
                        child: Container(
                          width: 160,
                          child: Text(
                            recommends[index]['title'].toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 5),
                        child:
                            Text('${recommends[index]['price'].toString()} BD'),
                      )
                    ],
                  ),
                );
              },
              itemCount: recommends.length,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CustomeCarouselHomePage(items: slider),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
