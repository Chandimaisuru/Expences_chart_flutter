import 'package:flutter/material.dart';

class Expences extends StatefulWidget {
  const Expences({super.key});

  @override
  State<Expences> createState() => _ExpencesState();
}

class _ExpencesState extends State<Expences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXPENCES CHART ",
         style: TextStyle(
          fontSize:20,
          color: Color.fromARGB(246, 216, 200, 20),
          fontWeight:FontWeight.w300,
        ),
        ),
        backgroundColor: const Color.fromARGB(230, 3, 3, 3),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Container(
              width: 39,
              height: 39,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                  color: const Color.fromARGB(226, 216, 200, 20),
              ),
                     
              child: IconButton(onPressed: (){}, 
              icon:const Icon(Icons.add),
              color: const Color.fromARGB(246, 7, 7, 7),
              ),
            ),
          )
        ],
      ),
    );
  }
}