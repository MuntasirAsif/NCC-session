import 'package:flutter/material.dart';
import 'package:whats_app/constant/colors.dart';
import 'package:whats_app/widgets/chat_list_widget.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool textFieldOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColors,
      appBar: AppBar(
        title: Text(
          'WhatsApp',
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
            onTap: (){
              setState(() {
                if(textFieldOpen==false){
                  textFieldOpen = true;
                }else{
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
              itemBuilder: (BuildContext context){
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
              },)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            textFieldOpen?Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white
                ),

                decoration: InputDecoration(
                  labelText: 'What are you searching?',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  )

                ),
              ),
            ):SizedBox(),
            ChatListWidget(
              imageUrl:
                  'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
              title: 'Mr. Karim',
              subtitle: 'bbaebkqhe fkq ebqjhefw ef wk',
              trailing: '8:24  am',
            ),
            ChatListWidget(
              imageUrl:
                  'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
              title: 'Umme sara',
              subtitle: 'bbaebkqhe fkq ebqjhefw ef wk',
              trailing: '8:24  am',
            ),
            ChatListWidget(
              imageUrl:
                  'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
              title: 'Anis Sir',
              subtitle: 'bbaebkqhe fkq ebqjhefw ef wk',
              trailing: '8:24  am',
            ),
            ChatListWidget(
              imageUrl:
                  'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
              title: 'Shakib',
              subtitle: 'bbaebkqhe fkq ebqjhefw ef wk',
              trailing: '8:24  am',
            ),
            ChatListWidget(
              imageUrl:
                  'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
              title: 'Tamim',
              subtitle: 'bbaebkqhe fkq ebqjhefw ef wk',
              trailing: '8:24  am',
            ),
            ChatListWidget(
              imageUrl:
              'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
              title: 'Mr. Karim',
              subtitle: 'bbaebkqhe fkq ebqjhefw ef wk',
              trailing: '8:24  am',
            ),
            ChatListWidget(
              imageUrl:
              'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
              title: 'Umme sara',
              subtitle: 'bbaebkqhe fkq ebqjhefw ef wk',
              trailing: '8:24  am',
            ),
            ChatListWidget(
              imageUrl:
              'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
              title: 'Anis Sir',
              subtitle: 'bbaebkqhe fkq ebqjhefw ef wk',
              trailing: '8:24  am',
            ),ChatListWidget(
              imageUrl:
              'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
              title: 'Mr. Karim',
              subtitle: 'bbaebkqhe fkq ebqjhefw ef wk',
              trailing: '8:24  am',
            ),
            ChatListWidget(
              imageUrl:
              'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
              title: 'Umme sara',
              subtitle: 'bbaebkqhe fkq ebqjhefw ef wk',
              trailing: '8:24  am',
            ),
            ChatListWidget(
              imageUrl:
              'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
              title: 'Anis Sir',
              subtitle: 'bbaebkqhe fkq ebqjhefw ef wk',
              trailing: '8:24  am',
            ),
          ],
        ),
      ),
    );
  }
}
