import 'package:flutter/material.dart';

import 'loginRes.dart';

class welcome extends StatelessWidget {
 // const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
          child:   Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:
          Column(
            children: [
          Container(
          child: Hero(
          tag: "photo",
            child: Container(
                width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage
                  ("https://i.pinimg.com/236x/02/a8/03/02a803304114289eb4459b81c0720115.jpg",),
              ),
            ),

              )
          )),

              SizedBox(
                height: 90,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => log_res("Log In"))
                  );
                },
                child: const Text(
                  'Log In',
                  style: TextStyle(fontSize: 14),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:  Colors.pinkAccent,
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => log_res("Register"))
                  );
                },
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 14),
                ),
              ),

            ],

          )
          )
    )
      );

  }


}