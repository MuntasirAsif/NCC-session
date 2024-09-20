import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: AppDev()));
}

class AppDev extends StatelessWidget {
  const AppDev({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Niter NCC';
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          'NCC',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.red,
            decoration: TextDecoration.lineThrough,
          ),
          textAlign: TextAlign.right,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Niter',style: TextStyle(fontSize: 30),),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Text('Ncc',style: TextStyle(fontSize: 30),),
              SizedBox(
                width: 30,
              ),
              Text('Niter Computer club')
            ],
          )
        ],
      )
    );
  }
}

/*CircleAvatar(
radius: 30,
backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwYDDEpNkrBW6rqm_pppcOIKN_my-O7ao8yaoBS7FSW9Ofv-cwOHLQKZG5P38G4SYk9_RDXaA9cw6Cm4S0xzisvxoi7zmfJk3_Nk5eGGY'),
),*/
/*
Center(
child: Container(
height: 200,
width: 200,
decoration: BoxDecoration(
color: Colors.red,
border: Border.all(color: Colors.white,width: 10),
borderRadius: const BorderRadius.only(topRight: Radius.circular(50),bottomLeft: Radius.circular(50))
),
child: Container(
margin: EdgeInsets.all(20),
padding: EdgeInsets.all(50),
color: Colors.greenAccent,
child: Text('ghfdccukgxhjfvyukfgkuf'),
),
),
)*/

/*Image(
image: NetworkImage('https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp'),
),*/
/*
const CircleAvatar(
backgroundColor: Colors.yellow,
radius: 100,
child: Icon(Icons.person,size: 100,),
),*/
