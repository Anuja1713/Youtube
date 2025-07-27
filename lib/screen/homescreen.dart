import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/custom_widget/custom_container.dart';
import 'package:youtube/routes/app_routes.dart';
import 'package:youtube/screen/notification.dart';

class MyDearApp extends StatelessWidget {
  const MyDearApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          "https://i.pinimg.com/originals/1a/97/7d/1a977d1ed9962a4ee5fab05a820a09e7.gif",
        ),
        title: Text(
          "Youtube",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    ),
                  );
                },
              ),

              SizedBox(width: 10),
              Icon(Icons.search, color: Colors.white),
            ],
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 47, 46, 46),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, AppRoutes.playVideo);
                Get.toNamed(AppRoutes.playVideo);
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.grey),
                height: 230,
                width: double.infinity,
                child: Image.network(
                  "https://i.pinimg.com/736x/20/17/c9/2017c9b96832b1b2765c5f98044e12ee.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/43/40/42/43404209615f4fbf0e0eaf7cb39f91b8.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SEVENTEEN- HOT @Comeback Show ",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "'Face the Sun'",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "100 million views 3 years ago",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "SEVENTEEN",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.verified,
                          color: const Color.fromARGB(255, 161, 250, 198),
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ], //'Face the Sun'
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: const Color.fromARGB(255, 46, 45, 45),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/youtube-shorts-icon.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // CustomContianer(
                //   height: 40,
                //   width: 40,
                //   imageurl:
                //       "https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/youtube-shorts-icon.png",
                //   Colorss: Colors.grey,
                // ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      "Shorts",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 200),
                Row(
                  children: [
                    Icon(Icons.more_vert, size: 30, color: Colors.white),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://i.pinimg.com/736x/e5/4b/b8/e54bb8da52af4c84c46d338ecf683cc7.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // CustomContianer(
                      //   width: 170,
                      //   height: 250,
                      //   imageurl:
                      //       "https://i.pinimg.com/736x/e5/4b/b8/e54bb8da52af4c84c46d338ecf683cc7.jpg",
                      //   Colorss: Colors.grey,
                      // ),
                      SizedBox(height: 4),
                      Text(
                        "K-Pop Power🔥😤",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://i.pinimg.com/736x/12/62/a5/1262a5a4508ad0c05915bfe15a0e2205.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Mingyu = drip king 🔥",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://i.pinimg.com/736x/49/b3/f7/49b3f7a44dbea33c91612ad8e71f8d02.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Coupsiee and junnie🥰🤧",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://i.pinimg.com/736x/44/a7/a8/44a7a8fc986b9733785325a038d3e5f2.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Private Dino on bias duty🎖️",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://i.pinimg.com/736x/e7/6a/b3/e76ab3afcb825c7f75dfabeaa05d0bfc.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "General Dokyeom 👑",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.grey),
                  height: 230,
                  width: double.infinity,
                  child: Image.network(
                    "https://i.pinimg.com/736x/6d/8a/da/6d8ada23237842a4098ad1ea88d184bf.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://i.pinimg.com/736x/ca/d3/ce/cad3ce37fec0fd3786ce1ba6582a8049.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SVT LEADERS 'CHEERS' Official MV",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "82 million views 2 years ago",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "HYBE LABELES",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.verified,
                              color: const Color.fromARGB(255, 161, 250, 198),
                              size: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ], //'Face the Sun'
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.grey),
                  height: 230,
                  width: double.infinity,
                  child: Image.network(
                    "https://i.pinimg.com/736x/5e/bd/14/5ebd141719a3926ac62e5727bf50f298.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://i.pinimg.com/736x/d6/73/91/d67391ad82c71135e26a019a1e498980.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We Listen We Don't Judge☝🏻",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),

                        Text(
                          "4 million views 3 months ago",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Svteaaa",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ], //'Face the Sun'
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// https://i.pinimg.com/736x/20/17/c9/2017c9b96832b1b2765c5f98044e12ee.jpg
