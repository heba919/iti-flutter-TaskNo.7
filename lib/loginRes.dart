import 'package:flutter/material.dart';


class log_res extends StatelessWidget {
 String title;
 log_res(this.title);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:  IconButton( icon: Icon(Icons.arrow_back),
            onPressed: () {Navigator.pop(context); }),
        title: Text(title),
        actions: [
        Hero(
        tag: "photo",
        child: CircleAvatar(
            child:  Container(
              width: 100,
              height: 100,
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
                  image: NetworkImage
                    ("https://i.pinimg.com/236x/02/a8/03/02a803304114289eb4459b81c0720115.jpg",),
                ),
              ),

            ),
          )
        )
        ],
      ),
        body: SafeArea(
            child:   Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),

                    Text("Hello!" ,style: TextStyle(fontSize: 24)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Wellcome to our app!", style: TextStyle(fontSize: 19)),
                    SizedBox(
                      height: 30,
                    ),

                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter E-mail",
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Colors.pinkAccent),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(

                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),

                          borderSide: BorderSide(

                              width: 3, color: Colors.pinkAccent),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent,
                        minimumSize: const Size.fromHeight(50), // NEW
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 19),
                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Image.network('https://www.logoeps.net/wp-content/uploads/2013/04/Facebook-icon-logo-700x700.jpg' ,width: 50,
                            height: 50),
                        Image.network('https://www.logoeps.net/wp-content/uploads/2016/12/twitter-logo-462x375.png',width: 50,
                            height: 50),
                        Image.network('https://www.logoeps.net/wp-content/uploads/2012/01/google-logo.jpg',width: 50,
                            height: 50),
                      ],
                    )



                  ],

                )
            )
        )
    );
  }
}
