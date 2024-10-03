// ignore_for_file: avoid_print

import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../controllers/prerecord_controller.dart';

class PrerecordPage extends GetView<PrerecordController> {
  const PrerecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PrerecordController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.offAll(() => const HomePage());
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: YoutubePlayer(
                controller: controller.youtubeController,
                showVideoProgressIndicator: true,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "감지/영상 보기",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_right_sharp,
                              size: 30,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              print("pre record pressed");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  for (var i = 0; i < 6; i++)
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "타임랩스 영상 보기",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_right_sharp,
                                size: 30,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
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