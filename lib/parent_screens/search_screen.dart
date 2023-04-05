// import 'package:edudrive/search_screenlist.dart';
import 'package:edudrive/maps/map_screen.dart';
import 'package:edudrive/parent_screens/search_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: 'Choose pickup point',
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide:
                    //       new BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    //   borderRadius: new BorderRadius.circular(20),
                    // ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Choose school',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              width: double.infinity,
              height: 500,
              child: MapScreen(),
            ),

            // SvgPicture.asset(
            //   './images/search_pic.svg',
            //   width: 200,
            //   height: 200,
            // ),
            // Text('Search for van Driver',
            //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

            SizedBox(
              height: 5,
            ),

            Center(
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        fixedSize: Size(200, 50),
                        backgroundColor: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const searchlist()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          // size: double(),
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
