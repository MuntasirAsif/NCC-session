import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: AppDev()));
}

class AppDev extends StatelessWidget {
  const AppDev({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
        child: const ListTile(
          leading: Image(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwYDDEpNkrBW6rqm_pppcOIKN_my-O7ao8yaoBS7FSW9Ofv-cwOHLQKZG5P38G4SYk9_RDXaA9cw6Cm4S0xzisvxoi7zmfJk3_Nk5eGGY')),
          title: Text('Muntasir'),
          subtitle: Text("hi i'm muntASIR"),
          trailing: Icon(Icons.menu),
        ),
      ),
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
