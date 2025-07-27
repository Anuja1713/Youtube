import 'package:flutter/material.dart';

class VideoPlay extends StatelessWidget {
  const VideoPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Playing from SEVENTEEN",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Video Player Placeholder
            Container(
              height: 220,
              width: double.infinity,
              color: Colors.grey.shade800,
              child: const Center(
                child: Icon(
                  Icons.play_circle_fill,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Video Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "SEVENTEEN - HOT (Official MV)",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 6),

            // Views and Upload Info
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "100M views • 3 years ago",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            const SizedBox(height: 10),

            // Like / Share / Download row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  _ActionButton(
                    icon: Icons.thumb_up_alt_outlined,
                    label: "Like",
                  ),
                  _ActionButton(
                    icon: Icons.thumb_down_alt_outlined,
                    label: "Dislike",
                  ),
                  _ActionButton(icon: Icons.share_outlined, label: "Share"),
                  _ActionButton(
                    icon: Icons.download_outlined,
                    label: "Download",
                  ),
                  _ActionButton(icon: Icons.more_vert, label: "More"),
                ],
              ),
            ),
            const Divider(color: Colors.grey, thickness: 0.3, height: 20),

            // Channel Info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/736x/43/40/42/43404209615f4fbf0e0eaf7cb39f91b8.jpg",
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      "SEVENTEEN Official",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "SUBSCRIBE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Icon+Text Button
class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}
