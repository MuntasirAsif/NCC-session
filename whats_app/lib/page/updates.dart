import 'package:flutter/material.dart';
import '../constant/colors.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  bool textFieldOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColors,
      appBar: AppBar(
        title: Text(
          'Updates',
          style: TextStyle(
              color: titleTextColors,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        backgroundColor: bgColors,
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: titleTextColors,
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              setState(() {
                if (textFieldOpen == false) {
                  textFieldOpen = true;
                } else {
                  textFieldOpen = false;
                }
              });
              print(textFieldOpen);
            },
            child: Icon(
              Icons.search,
              color: titleTextColors,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          PopupMenuButton(
            color: bgColors,
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text('Profile'),
                ),
                const PopupMenuItem(
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  child: Text('Profile'),
                ),
                const PopupMenuItem(
                  child: Text('Settings'),
                ),
              ];
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Status',
              style: TextStyle(
                  color: titleTextColors,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 110,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20)
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(100),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                      'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
                                    ),fit: BoxFit.cover)),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                                radius: 10,
                                backgroundColor: cardBgColor,
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Text('Add Status',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 110,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20)
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(100),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                      'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
                                    ),fit: BoxFit.cover)),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                                radius: 10,
                                backgroundColor: cardBgColor,
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Text('Add Status',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
