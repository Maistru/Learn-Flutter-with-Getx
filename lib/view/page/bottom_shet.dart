import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottmShetGet extends StatelessWidget {
  const BottmShetGet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  persistent: true,
                  backgroundColor: Colors.white,
                  enableDrag: true,
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 250,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: ListView(
                      children: const [
                        ListTile(
                          leading: Icon(Icons.photo),
                          title: Text('PHOTO'),
                        ),
                        ListTile(
                          leading: Icon(Icons.video_collection),
                          title: Text('VIDEO'),
                        ),
                        ListTile(
                          leading: Icon(Icons.share),
                          title: Text('SHARE'),
                        ),
                        ListTile(
                          leading: Icon(Icons.cancel_rounded),
                          title: Text('CANCEL'),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: const Text("OPEN BOTTOM SHET"),
            ),
          ],
        ),
      ),
    );
  }
}
