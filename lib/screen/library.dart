import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/controller/user_controller.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  final UserController controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: const [
          Icon(Icons.cast, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.notifications, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.search, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.settings, color: Colors.white, size: 25),
          SizedBox(width: 15),
        ],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/wonwoo.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jeon Wonwoo",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "@wonwoo gaming • View Channel >",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      _button(Icons.switch_account, "Switch Account"),
                      const SizedBox(width: 10),
                      _buttonText("G", "Google Account"),
                      const SizedBox(width: 10),
                      _button(Icons.privacy_tip, "Turn On Incognito"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              _sectionTitle("History", "View All"),
              const SizedBox(height: 15),
              _historyList(),
              const SizedBox(height: 24),
              _playlistSection(),
              const SizedBox(height: 24),
              _simpleRow(Icons.play_arrow, "Your videos"),
              const SizedBox(height: 16),
              _downloadsRow(),
              const SizedBox(height: 16),
              _simpleRow(Icons.shopping_bag, "Budgets"),
              const SizedBox(height: 20),
              const Divider(color: Colors.white, thickness: 0.5),
              _simpleRow(Icons.shopping_bag, "Your Movies"),
              const SizedBox(height: 20),
              _simpleRow(Icons.shopping_bag, "Get Youtube Premium"),
            ],
          ),
        );
      }),
    );
  }

  Widget _button(IconData icon, String label) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color.fromARGB(255, 107, 107, 107),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
      onPressed: () {},
      icon: Icon(icon, color: Colors.white, size: 18),
      label: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget _buttonText(String text, String label) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color.fromARGB(255, 107, 107, 107),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
      onPressed: () {},
      icon: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      label: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget _sectionTitle(String title, String buttonText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(color: Colors.grey),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            onPressed: () {},
            child: Text(
              buttonText,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget _historyList() {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _videoCard(
            "Achyutam Keshavam Krishna Damodaram",
            "Madhuraa Bhattacharya.",
            "mix",
            "https://i.pinimg.com/1200x/5b/5d/a6/5b5da66edf93f32a36e95366528590a3.jpg",
          ),
          _videoCard(
            "RM 'Wild Flower (with youjeen)' Official MV",
            "#WildFlower #Indigo",
            "3:45",
            "https://i.pinimg.com/1200x/99/fa/cb/99facb6c50642ded4d910cc6f1c191e4.jpg",
          ),
          _videoCard(
            "Shorts",
            "5 watched",
            "",
            "https://i.pinimg.com/736x/2d/72/21/2d7221609d0ce12f1af3975a27e0d1d5.jpg",
          ),
        ],
      ),
    );
  }

  Widget _videoCard(
    String title,
    String subtitle,
    String tag,
    String imageUrl,
  ) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                if (tag.isNotEmpty)
                  Positioned(
                    bottom: 4,
                    right: 4,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _playlistSection() {
    return Column(
      children: [
        _sectionTitle("Playlists", "View All"),
        const SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _playlistCard(
                Icons.thumb_up,
                "Liked videos",
                "Private",
                "262",
                "https://i.pinimg.com/1200x/ea/c2/37/eac237c4e40b9a41a43c71237cbcc6f3.jpg",
              ),
              _playlistCard(
                Icons.access_time,
                "Watch Later",
                "Private",
                "",
                "https://i.pinimg.com/736x/4b/f8/48/4bf848b2ce731707b528a14035500019.jpg",
              ),
              _playlistCard(
                null,
                "fav",
                "Public • 1",
                "",
                "https://i.pinimg.com/736x/75/5c/d6/755cd60441ddb51c0ff81256ee792137.jpg",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _playlistCard(
    IconData? icon,
    String title,
    String subtitle,
    String count,
    String imageUrl,
  ) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: imageUrl.isNotEmpty
                  ? DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    )
                  : null,
              color: imageUrl.isEmpty ? Colors.grey[800] : null,
            ),
            child: icon != null && imageUrl.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon, color: Colors.white, size: 30),
                      if (count.isNotEmpty)
                        Text(
                          count,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ],
                  )
                : null,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _simpleRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 24),
          const SizedBox(width: 16),
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }

  Widget _downloadsRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.download, color: Colors.white, size: 24),
              SizedBox(width: 16),
              Text(
                "Downloads",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          const Icon(Icons.check_circle, color: Colors.white, size: 24),
        ],
      ),
    );
  }
}
