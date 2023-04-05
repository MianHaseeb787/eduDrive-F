import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class ComplaintScreen extends StatefulWidget {
  const ComplaintScreen({Key? key}) : super(key: key);

  @override
  State<ComplaintScreen> createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              './images/complaint_pic.svg',
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: 10,
            ),
            // Text('Launch a Complaint',
            //     style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text('Pickup point'),
                TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                // Text('Drop off point'),
                TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'emial/phone number',
                  ),
                ),

                SizedBox(
                  height: 50,
                ),
                // Text('Drop off point'),
                TextFormField(
                    cursorColor: Colors.red,
                    maxLines: 10, // <--- maxLines
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Hint text',
                      // fillColor: Colors.indigo,
                    )),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fixedSize: Size(100, 50),
                    backgroundColor: Colors.black),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const searchlist()),
                  // );
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
