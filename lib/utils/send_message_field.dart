import 'package:flutter/material.dart';
import 'package:teamproject/resources/firebase_data.dart';


class SendMessage extends StatefulWidget {
  SendMessage({Key? key}) : super(key: key);

  @override
  State<SendMessage> createState() => _SendMessageState();
}

final maxlines = 10;
final TextEditingController _nameController = TextEditingController();
final TextEditingController _messageController = TextEditingController();

class _SendMessageState extends State<SendMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 344,
      color: Color.fromARGB(255, 90, 90, 90),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 3, color: Color.fromARGB(255, 0, 0, 0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextField(
                controller: _nameController,
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration:
                    InputDecoration(hintText: 'Name', border: InputBorder.none),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 3, color: Color.fromARGB(255, 0, 0, 0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextField(
                controller: _messageController,
                maxLines: maxlines,
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration: InputDecoration(
                    hintText: 'Message', border: InputBorder.none),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 300,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              AddData(
                  name: _nameController.text, message: _messageController.text);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                  //to set border radius to button
                  borderRadius: BorderRadius.circular(20)),
            ),
            child: Text('Send Message'),
          ),
        ),
      ]),
    );
  }
}
