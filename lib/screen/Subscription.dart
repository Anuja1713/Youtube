import 'package:flutter/material.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  final List<String> storyImages = [
    "https://i.pinimg.com/736x/0a/f1/47/0af147d794a113b31e2cbcce15d7b785.jpg",
    "https://i.pinimg.com/736x/1c/4f/9d/1c4f9dd64a22a0a22ee004b786793d5f.jpg",
    "https://i.pinimg.com/736x/0e/30/47/0e30474d53c3565fb769efa23e503348.jpg",
    "https://i.pinimg.com/736x/54/0d/92/540d9294773c7de2436dc335f549f0d7.jpg",
    "https://i.pinimg.com/736x/b1/a2/ab/b1a2abb24e6bcbdf00d768853a1a8cd1.jpg",
    "https://i.pinimg.com/1200x/b9/a3/fe/b9a3fe53471b8e3e4cae8fa7d251a65a.jpg",
    "https://i.pinimg.com/736x/0a/f1/47/0af147d794a113b31e2cbcce15d7b785.jpg",
    "https://i.pinimg.com/736x/2e/90/08/2e9008f295c3f6d83c0862f87f8d61ec.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png",
          ),
        ),
        title: const Text(
          "YouTube",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        actions: const [
          Icon(Icons.cast, size: 28, color: Colors.white),
          SizedBox(width: 12),
          Icon(Icons.notifications, size: 28, color: Colors.white),
          SizedBox(width: 12),
          Icon(Icons.search, size: 28, color: Colors.white),
          SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStorySection(),
              const SizedBox(height: 10),
              _buildFilterButtons(),
              const SizedBox(height: 10),
              _buildMainVideo(),
              const SizedBox(height: 20),
              _buildVideoInfo(),
              const SizedBox(height: 20),
              _buildShortsHeader(),
              const SizedBox(height: 10),
              _buildShortsRow(),
            ],
          ),
        ),
      ),
    );
  }

  // -------------- UI WIDGETS ----------------

  Widget _buildStorySection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          storyImages.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red, width: 2),
                image: DecorationImage(
                  image: NetworkImage(storyImages[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFilterButtons() {
    final List<String> filters = [
      "All",
      "Today",
      "Continue Watching",
      "Unwatched",
      "Live",
      "Posts",
      "Settings",
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: filters.map((text) => _buildFilterButton(text)).toList(),
      ),
    );
  }

  Widget _buildFilterButton(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 7),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white12,
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
        ),
        child: Text(text),
      ),
    );
  }

  Widget _buildMainVideo() {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        image: const DecorationImage(
          image: NetworkImage(
            "https://i.pinimg.com/1200x/ad/b5/e9/adb5e996f4175cdcbcd23771b7a441a1.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.red,
          ),
          child: const Text(
            "LIVE",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
    );
  }

  Widget _buildVideoInfo() {
    return Row(
      children: [
        const SizedBox(width: 20),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                "https://i.pinimg.com/1200x/0b/e2/59/0be2593ff609846c9aa50669c78af846.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "WONWOO Playing Platform 8",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text("Wonwoo Gaming", style: TextStyle(color: Colors.white70)),
          ],
        ),
      ],
    );
  }

  Widget _buildShortsHeader() {
    return Row(
      children: [
        SizedBox(
          height: 40,
          child: Image.network(
            "https://img.pikbest.com/origin/09/21/29/70epIkbEsTFJf.png!sw800",
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          "Shorts",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        const Spacer(),
        const Icon(Icons.more_vert, color: Colors.white),
      ],
    );
  }

  Widget _buildShortsRow() {
    final List<String> shortsImages = [
      "https://i.pinimg.com/1200x/be/f2/c0/bef2c0a31ce5c0713f8942482f40479d.jpg",
      "https://i.pinimg.com/736x/c6/fe/1a/c6fe1abc6fea8904e4b6b62323fbf967.jpg",
      "https://i.pinimg.com/736x/9e/84/00/9e8400cc2c4873418d7485e40910938a.jpg",
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: shortsImages.map((url) => _buildShortContainer(url)).toList(),
      ),
    );
  }

  Widget _buildShortContainer(String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 300,
        width: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
