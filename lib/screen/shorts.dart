import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/controller/shorts_controller.dart';

class Shorts extends StatelessWidget {
  final ShortsController controller = Get.put(ShortsController());

  Shorts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Shorts",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        actions: const [
          Icon(Icons.search, size: 30, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.more_vert, size: 30, color: Colors.white),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // ✅ Background Image
                Image.network(
                  "https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExaGVvMXN1N3ppMnJvcmllbHN1aDV6c2NvdzcybWthbjlhbTN1ZXhvZiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/D0h583flkaxvVYc6Bh/giphy.gif",
                  height: 1000,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Center(child: Icon(Icons.error, color: Colors.red)),
                ),

                // ✅ Foreground Content
                Positioned(
                  top: 580,
                  left: 16,
                  right: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 10,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: const NetworkImage(
                              "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/66b327ac7fb97c001d18e3a7.jpg",
                            ),
                            backgroundColor: Colors.grey[200],
                          ),
                          const Text(
                            "Doremon Official shorts",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Obx(
                            () => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                              ),
                              onPressed: () {
                                final isSubscribed =
                                    controller.mytext.value == "Subscribed✨";

                                Get.snackbar(
                                  isSubscribed
                                      ? "Unsubscribed❌"
                                      : "Subscribed✅",
                                  controller.cahnnel_name.value,
                                  icon: Icon(
                                    isSubscribed
                                        ? Icons.cancel
                                        : Icons.verified,
                                    color: isSubscribed
                                        ? Colors.red
                                        : Colors.blue,
                                  ),
                                  backgroundColor: Colors.pinkAccent,
                                  duration: const Duration(seconds: 1),
                                );

                                controller.changeValue();
                              },
                              child: Text(controller.mytext.value),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => Text(
                              controller.discription.value,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Image.network(
                            "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/66b327ac7fb97c001d18e3a7.jpg",
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.error, color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
